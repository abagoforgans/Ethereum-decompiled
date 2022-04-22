contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor2 = code.data[1735 len 32]
    return code.data[90 len 1645]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 stor1;
uint256 stor2;
array of uint256 stor99;

function owner() {
    return owner
}

function getParameter(string arg1) {
    return stor[_36][0 len stor[_36].length]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setIPFSParameter(string arg1, string arg2) {
    require owner == msg.sender
    require ext_code.size(this.address)
    call this.address.0xe1332ab9 with:
         gas gas_remaining - 710 wei
        args 0, 64, arg1.length + 96, arg1.length, arg1[all], arg2.length, arg2[all]
    require ext_call.success
    emit HashAdded(address(this.address), Array(len=arg2.length, data=arg2[all]), stor2);
}

function setParameter(string arg1, string arg2) {
    require owner == msg.sender
    emit ParameterSet(Array(len=arg1.length, data=arg1[all]), arg1.length + 96);
    stor1[arg1[all]] = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        stor1[arg1[all]][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while stor1[arg1[all]].length + 31 / 32 > idx:
        stor1[arg1[all]][idx] = 0
        idx = idx + 1
        continue 
}



}
