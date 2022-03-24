contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = tx.origin or Mask(96, 160, stor0)
    return code.data[36 len 1116]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of uint256 name;
array of uint256 stor2;

function name() payable {
    return name[0 len name.length]
}

function owner() payable {
    return address(owner)
}

function destroy() payable {
    if address(owner) != tx.origin:
    selfdestruct(address(owner))
}

function _fallback() payable {
  stop
}

function setName(string arg1) payable {
    if address(owner) == tx.origin:
        name[] = Array(len=arg1.length, data=arg1[all])
}

function setOwner(address arg1) payable {
    if tx.origin == address(owner):
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function addString(string arg1, string arg2) payable {
    if tx.origin == address(owner):
        stor2[arg1[all]][] = Array(len=arg2.length, data=arg2[all])
}



}
