contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 4327]




// =====================  Runtime code  =====================


mapping of struct addr;

function addr(string arg1) payable {
    return addr[arg1[all]].field_256
}

function subRegistrar(string arg1) payable {
    return addr[arg1[all]].field_768
}

function content(string arg1) payable {
    return addr[arg1[all]].field_512
}

function owner(string arg1) payable {
    return addr[arg1[all]].field_0
}

function _fallback() payable {
  stop
}

function disown(string arg1) payable {
    if addr[arg1[all]].field_0 == msg.sender:
        addr[arg1[all]].field_0 = 0
        emit Changed(Array(len=arg1.length, data=arg1[all]), sha3(arg1[all]));
}

function setContent(string arg1, bytes32 arg2) payable {
    if addr[arg1[all]].field_0 == msg.sender:
        addr[arg1[all]].field_512 = arg2
        emit Changed(Array(len=arg1.length, data=arg1[all]), sha3(arg1[all]));
}

function reserve(string arg1) payable {
    if addr[arg1[all]].field_0:
        return 0
    addr[arg1[all]].field_0 = msg.sender or Mask(96, 160, addr[arg1[all]].field_0)
    emit Changed(Array(len=arg1.length, data=arg1[all]), sha3(arg1[all]));
    return 1
}

function transfer(string arg1, address arg2) payable {
    if addr[arg1[all]].field_0 == msg.sender:
        addr[arg1[all]].field_0 = arg2 or Mask(96, 160, addr[arg1[all]].field_0)
        emit Changed(Array(len=arg1.length, data=arg1[all]), sha3(arg1[all]));
}

function setAddr(string arg1, address arg2) payable {
    if addr[arg1[all]].field_0 == msg.sender:
        addr[arg1[all]].field_256 = arg2 or Mask(96, 160, addr[arg1[all]].field_256)
        emit Changed(Array(len=arg1.length, data=arg1[all]), sha3(arg1[all]));
}

function setSubRegistrar(string arg1, address arg2) payable {
    if addr[arg1[all]].field_0 == msg.sender:
        addr[arg1[all]].field_768 = arg2 or Mask(96, 160, addr[arg1[all]].field_768)
        emit Changed(Array(len=arg1.length, data=arg1[all]), sha3(arg1[all]));
}



}
