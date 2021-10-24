    package p2utils;

public class training {
    private Node<E> first = null;
    private Node<E> last = null;
    private int size = 0;

    /** Constructor, empty so far.   */
   public LinkedList() { }

   /** List size.  */
   public int size() { return size; }

   /** Checks if the list is empty.  */
   public boolean isEmpty() { return size == 0; }

   /** First element.  */
   public E first() {
      assert !isEmpty(): "Should not be empty!";
      return first.elem;
   }

   /** Last element.  */
   public E last() {
      assert !isEmpty(): "Should not be empty!";
      return last.elem;
   }

   /** Clear list. */
   public void clear() {
      first = last = null;
      size = 0;
      // post-condition:
      assert isEmpty();
   }

   /** String representation of list.
    * @return string like "[E0, E1, ...]", where Ek are the elements of the list
    */
   public String toString() {
      String sep = "";
      String s = "";
      for (Node<E> n = first; n != null; n = n.next) {
         s += sep + n.elem;
         sep = ", ";
      }
      return "[" + s + "]";
   }

   /** Check if the given element exists in the list.
    * @param x the element to search for
    * @return {@code true} if the element exists and {@code false} otherwise
    */
   public boolean contains(E x) {
      return contains(first, x);
   }
   // Auxiliary function:
   // Check if x exists in sublist starting at node n.
   private boolean contains(Node<E> n, E x) {
      if (n == null) return false;
      if (n.elem == x || n.elem.equals(x)) return true;
      return contains(n.next, x);
   }

   // Mostra a lista (e alguns detalhes internos).
   public void show(String name) {
      System.out.printf("%s: %s size=%d first=%s last=%s\n",
         name, this.toString(), size,
         first==null? "-": first.elem,
         last==null? "-": last.elem);
   }

   /** Adds a new element to the start of the list. */

    public void addFirst(E e) {
        if(e == null) return;

        Node<E> newest = new NOde<E>(e);

        if(isEmpty()) {
            last = first = newest;
        } else {
            newest = new Node<E>(e, first);
            newest.next = first;
            first = newest;
        }
        size++;

        assert !isEmpty() : "Empty";
        assert first().equals(e) : "Wrong element";
    }

    public void addLast(E e) {
        Node<E> newest = new Node<E>(e);
        
        if(isEmpty()) {
            first = newest;
        } else {
            last.next = newest;
        }
        last = newest;
        size ++;

        assert !isEmpty() : "Empty";
        assert last() == e : "Wrong elem";
    }

    public void removeSecond() {
        assert size >= 2: "List should contain 2 or more elements";

        first.next = first.next.next;
        size--;
        if(size == 1) {
            last = first;
        }
    }

    public int copyToArray(E[] a) {
        int copy = 0;
        for (int i = 0; i < a.length; i++) {
            if(first != null) {
                a[i] = first.elem;
                first = first.next;
                copy++;
            }
        }
        for (int i = 0; i < a.length; i++) {
            addLast(a[i]);
        }
        return copy;
    }

    public void removeFirst() {
        assert !isEmpty() : "empty";

        first = first.next;
        if(isEmpty()) {
            last = null;
        }
        size--;
    }

    public void remove(int p) {
       assert p > 0 && p < size: "unknown position";

       if(!isEmpty()) { // caso não esteja vazia:
            if(p==0) {
                removeFirst(); // caso p correspinder ao index 0, ou seja o 1º elemento chama a função removeFirst()
                return;
            }

            Node<E> n = first;

            for (int i = 0; i < size; i++) {
                n = n.next;
            }

            if(size-1==p) {
                last = n; 
                
            }
            n.next = n.next.next;
            size--;
       }
    }

    public int count (E x) {
        int sum = 0;

        Node<E> n = new Node<E>(x);
        for (int i = 0; i < size; i++) {
            if(n.elem == x && n!= null) {
                sum++;
            }
            n = n.next;
        }

        return sum;
    }
}
