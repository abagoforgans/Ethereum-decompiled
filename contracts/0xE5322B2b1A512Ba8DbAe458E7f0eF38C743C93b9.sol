contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 2542]
}



// =====================  Runtime code  =====================


const owner(string arg1) = 0


address owner;
uint256 stor0;
mapping of struct addr;

function addr(string arg1) {
    return addr[arg1[all]].field_0
}

function subRegistrar(string arg1) {
    return addr[arg1[all]].field_256
}

function owner() {
    return address(owner)
}

function content(string arg1) {
    return addr[arg1[all]].field_512
}

function record(string arg1) {
    return addr[arg1[all]].field_0, addr[arg1[all]].field_256, addr[arg1[all]].field_512
}

function kill() {
    require msg.sender == address(owner)
    selfdestruct(address(owner))
}

function _fallback() payable {
    revert 
}

function delegate(address arg1) {
    require msg.sender == address(owner)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function setContent(string arg1, bytes32 arg2) {
    require address(owner) == msg.sender
    addr[arg1[all]].field_512 = arg2
    emit code.data[2510 len 32]: sha3(arg1[all])
}

function setAddr(string arg1, address arg2) {
    require msg.sender == address(owner)
    addr[arg1[all]].field_0 = arg2 or Mask(96, 160, addr[arg1[all]].field_0)
    emit code.data[2510 len 32]: sha3(arg1[all])
}

function disown(string arg1) {
    require msg.sender == address(owner)
    addr[arg1[all]].field_0 = 0
    addr[arg1[all]].field_256 = 0
    addr[arg1[all]].field_512 = 0
    emit code.data[2510 len 32]: sha3(arg1[all])
}

function setSubRegistrar(string arg1, address arg2) {
    require msg.sender == address(owner)
    addr[arg1[all]].field_256 = arg2 or Mask(96, 160, addr[arg1[all]].field_256)
    emit code.data[2510 len 32]: sha3(arg1[all])
}



}
