macro `:=`(assign,data):stmt=
  assert assign.kind=nnkIdent
  let to= $assign.ident

  assert data.len==3
  assert data.kind==nnkInfix

  let m1=data[0]
  assert m1.kind==nnkIndex
  assert $m1.ident=="1"

  let from1= $data[1].ident
  let form2= $data[2].ident

  result = parseStmt("isMult("& from1 &","& to &","& from2 &")")


Velocity := Length/Time
echo treeRepr(assign)
echo treeRepr(data)
assign = Ident !"Velocity"
data = 
  Infix
    Ident !"/"
    Ident !"Length"
    Ident !"Time"
