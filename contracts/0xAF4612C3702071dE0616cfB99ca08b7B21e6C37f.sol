contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = 0xe18af0dda74fc4ee90bcb37e45b4bd623dc6e099
    return code.data[94 len 1637]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 lastHello;

function owner() {
    return owner
}

function lastHello() {
    return lastHello[0 len lastHello.length]
}

function newOwner() {
    return newOwner
}

function finalize() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    newOwner = arg1
}

function sayOwnerHello(string arg1) {
    require owner == msg.sender
    emit LogStr(Array(len=arg1.length, data=arg1[all]));
}

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
}

function sayHello(string arg1) {
    lastHello[] = Array(len=arg1.length, data=arg1[all])
    emit LogStr(Array(len=arg1.length, data=arg1[all]));
}



}
