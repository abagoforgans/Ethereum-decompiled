contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#  - fund()
#
address owner;
address ownerCandidate;
uint256 stor7;
array of uint256 sub_bb6ded30;
uint256 sub_173a0da2;

function sub_173a0da2(?) {
    return sub_173a0da2
}

function ownerCandidate() {
    return ownerCandidate
}

function owner() {
    return owner
}

function sub_bb6ded30(?) {
    return sub_bb6ded30[0 len sub_bb6ded30.length]
}

function _fallback() payable {
  stop
}

function sub_5cef8786(?) {
    require owner == msg.sender
    ownerCandidate = arg1
    stor7 = arg2
}

function acceptManagement(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == ownerCandidate
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    require sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) == stor7
    owner = ownerCandidate
}



}
