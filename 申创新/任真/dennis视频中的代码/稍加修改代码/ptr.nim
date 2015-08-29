discard """
我觉得实现了链表
"""

type
  List*[T]= ref TList[T]                #garbage collected pointer
  TList[T]=object
    data:T
    next:List[T]

proc newList *[T](data:T):List[T]=
  new(result)
  result.data=data

proc insert*[T](x:var List[T],y:List[T])=
  let tmp=x.next
  x.next=y
  y.next=tmp



proc print *[T](x:List[T])=
  var y:List[T]
  y=x
  while y != nil:
    echo y.data
    y=y.next

var ls=newList("foo")
ls.insert(newList("bar"))
ls.print

ls.insert(newList("ren"))
ls.print
