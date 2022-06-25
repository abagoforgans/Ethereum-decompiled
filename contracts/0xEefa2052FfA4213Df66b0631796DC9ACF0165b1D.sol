contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
uint256 stor1;
mapping of struct sub_4eec7c2b;

function sub_4eec7c2b(?) {
    require calldata.size - 4 >= 32
    require sub_4eec7c2b[arg1].field_0 > 0
    return sub_4eec7c2b[arg1].field_0, sub_4eec7c2b[arg1].field_256
}

function owner() {
    return owner
}

function isTest() {
    return bool(stor0)
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function getCurrentTime() {
    if not stor0:
        return block.timestamp
    return stor1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function isIdentifierSupported(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return (sub_4eec7c2b[arg1].field_0 > 0)
}

function setCurrentTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require stor0
    stor1 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawErc20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_88be38ac(?) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    if not stor0:
        require block.timestamp + 900 >= block.timestamp
        require arg2 <= block.timestamp + 900
    else:
        require stor1 + 900 >= stor1
        require arg2 <= stor1 + 900
    require arg2 > sub_4eec7c2b[arg1].field_0
    sub_4eec7c2b[arg1].field_0 = arg2
    sub_4eec7c2b[arg1].field_256 = arg3
    emit 0x7b68a704: arg3, arg1, arg2
}



}
