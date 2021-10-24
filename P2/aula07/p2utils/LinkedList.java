package p2utils;

/** This class implements a List abstract data type using a linked list.
 * Please note that this is p2utils.LinkedList.
 * It is NOT the java.util.LinkedList class in the standard Java library!
 */
public class LinkedList<E> {

  private Node<E> first = null;
  private Node<E> last = null;
  private int size = 0;

  /** {@code LinkedList} constructor, empty so far.
   */
  public LinkedList() { }

  /** Returns the number of elements in the list.
   * @return Number of elements in the list
   */
  public int size() { return size; }

  /** Checks if the list is empty.
   * @return  {@code true} if list empty, otherwise {@code false}.
   */
  public boolean isEmpty() { return size == 0; }

  /** Returns the first element in the list.
   * @return  First element in the list
   */
  public E first() {
    assert !isEmpty(): "empty!";

    return first.elem;
  }

  /** Returns the last element in the list.
   * @return Last element in the list
   */
  public E last() {
    assert !isEmpty(): "empty!";

    return last.elem;
  }

  /** Adds the given element to the start of the list.
   * @param e the element to add
   */
  public void addFirst(E e) {
    first = new Node<>(e, first);
    if (isEmpty())
      last = first;
    size++;

    assert !isEmpty(): "empty!";
    assert first().equals(e) : "wrong element";
  }

  /** Adds the given element to the end of the list.
   * @param e the element to add
   */
  public void addLast(E e) {
    Node<E> newest = new Node<>(e);
    if (isEmpty())
      first = newest;
    else
      last.next = newest;
    last = newest;
    size++;

    assert !isEmpty(): "empty!";
    assert last().equals(e) : "wrong element";
  }

  /** Removes the first element in the list.
   */
  public void removeFirst() {
    assert !isEmpty(): "empty!";
    first = first.next;
    size--;
    if (isEmpty())
      last = null;
  }

  /** Removes all elements.
   */
  public void clear() {
    first = last = null;
    size = 0;
  }

  /** Checks if the given element exists in the list.
   * @param e an element
   * @return {@code true} if the element exists and {@code false} otherwise
   */
  public boolean contains(E e) { 
    return contains(first, e); 
  }
  private boolean contains(Node<E> n, E e) {
    if (n == null) return false;
    if (n.elem==null) return e==null; //dispensável, se impedirmos elem==null
    if (n.elem.equals(e)) return true; 
    return contains(n.next, e);
  }

  /** Prints all elements, one per line. */
  public void print() {
    print(first);
  }
  private void print(Node<E> n) {
    if (n != null) {
      System.out.println(n.elem);
      print(n.next);
    }
  }

  /** creates new copy of list
   *  @return a copy of the list
   */
  public LinkedList<E> clone() {
    LinkedList<E> list = new LinkedList<E>();
    clone(list,first);
    return list;
  }
  private void clone(LinkedList<E> list, Node<E> n){
    if(n==null) return;
    list.addLast(n.elem);
    clone(list, n.next);
  }

  /**
   * @return reverses the list
   */
  public LinkedList<E> reverse(){
    LinkedList<E> list = new LinkedList<E>();
    reverse(list,first);
    return list;
  }
  private void reverse(LinkedList<E> list, Node<E> n){
    if(n==null) return;
    list.addFirst(n.elem);
    reverse(list, n.next);
  }

  /**
   * @return remove an element from a list
   */  
  
  public void remove(E e) {
    if(first.elem.equals(e)) {
      first = first.next;
      return;
    }
    remove(first, e);
  }
  private void remove(Node<E> n, E e) {
    if(n == null) return;

    if(n.next.elem.equals(e)) {
      n.next = n.next.next;
      return;
    }
    remove(n.next, e);
  }

  /**
   * @return return the elements of a list
   */  

  public LinkedList<E> concatenate(LinkedList<E> argList) {
    LinkedList<E> list = new LinkedList<>();
    clone(list, first);
    concatenate(list, argList.first);
    return list;
  }
  private void concatenate(LinkedList<E> banks, Node<E> n) {
    if(n==null) return;
    banks.addLast(n.elem);
    concatenate(banks, n.next);
  }

  /**
   * @return return elem in the position
   */
  public E get(int i){
    int k = 0;
    return get(i, first);
  }
  private E get(int i, Node<E> n){
    if(i==0) return n.elem;
    return get(i-1, n.next);  
  }
}
