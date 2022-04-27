contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
uint256 stor402;
uint256 stor403;
uint256 stor404;
uint256 stor405;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    stor402 = 3
    stor403 = 33
    stor404 = 300
    stor405 = 2000
    address(stor0.field_0) = msg.sender
    return code.data[135 len 7700]
}



// =====================  Runtime code  =====================


#
#  - sub_1bf42644(?)
#  - sub_d3d7ee44(?)
#
uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
mapping of uint256 balance;
array of uint256 stor99;
uint256 sub_c955ff2d;
uint256 sub_4bc9a96d;
uint256 sub_772a29c0;
uint256 sub_1abe3b72;

function getBalance() {
    return balance[address(msg.sender)]
}

function sub_1abe3b72(?) {
    return sub_1abe3b72
}

function sub_4bc9a96d(?) {
    return sub_4bc9a96d
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function sub_772a29c0(?) {
    return sub_772a29c0
}

function owner() {
    return owner
}

function sub_c955ff2d(?) {
    return sub_c955ff2d
}

function _fallback() payable {
  stop
}

function sub_368f0465(?) {
    require msg.sender == owner
    sub_c955ff2d = arg1
}

function sub_545862bd(?) {
    require msg.sender == owner
    sub_772a29c0 = arg1
}

function sub_77af3e50(?) {
    require msg.sender == owner
    sub_1abe3b72 = arg1
}

function sub_e836624a(?) {
    require msg.sender == owner
    sub_4bc9a96d = arg1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw() {
    require not uint8(stor0.field_160)
    balance[address(msg.sender)] = 0
    call msg.sender with:
       value balance[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_0a319dd5(?) {
    require not uint8(stor0.field_160)
    require arg1 < 100
    require arg2.length > 0
    require arg3.length > 0
    require arg2.length <= sub_772a29c0
    require arg3.length <= sub_1abe3b72
    require arg1 < 100
    stor[sha3((4 * arg1) + 2)][] = Array(len=arg2.length, data=arg2[all])
    stor[sha3((4 * arg1) + 3)][] = Array(len=arg3.length, data=arg3[all])
}



}
