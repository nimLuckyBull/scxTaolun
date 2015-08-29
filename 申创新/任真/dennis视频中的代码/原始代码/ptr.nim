type
  List*[T]= ref TList[T]    #garbage collected pointer
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


var ls=newList("foo")
ls.insert(newList("bar"))
