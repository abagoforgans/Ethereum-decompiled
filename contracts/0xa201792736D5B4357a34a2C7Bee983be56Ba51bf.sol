contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint8 stor2;
address tokenAddress; offset 8
uint256 requiredStake;
uint256 creationBlock;
mapping of struct sub_de78492d;

function creationBlock() payable {
    return creationBlock
}

function requiredStake() payable {
    return requiredStake
}

function isPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor1[address(arg1)])
}

function paused() payable {
    return bool(stor2)
}

function owner() payable {
    return owner
}

function sub_de78492d(?) payable {
    require calldata.size - 4 >= 64
    require sub_de78492d[arg1][arg2].field_512 <= 3
    return sub_de78492d[arg1][arg2].field_0, 
           sub_de78492d[arg1][arg2].field_256,
           sub_de78492d[arg1][arg2].field_512,
           sub_de78492d[arg1][arg2].field_520
}

function sub_f6794e17(?) payable {
    require calldata.size - 4 >= 128
    return sub_de78492d[arg1][arg2][('map', ('param', 'arg3'), ('param', 'arg4'))].field_0
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function unpause() payable {
    require msg.sender
    require stor1[address(msg.sender)]
    require stor2
    stor2 = 0
    emit Unpaused(msg.sender);
}

function pause() payable {
    require msg.sender
    require stor1[address(msg.sender)]
    require not stor2
    stor2 = 1
    emit Paused(msg.sender);
}

function renouncePauser() payable {
    require msg.sender
    require stor1[address(msg.sender)]
    stor1[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function sub_35d9db53(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    requiredStake = arg1
    emit StakeChanged(requiredStake, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor1[address(msg.sender)]
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function sub_68b22b6c(?) payable {
    require calldata.size - 4 >= 128
    require sub_de78492d[arg1][arg2][('map', ('param', 'arg3'), ('param', 'arg4'))].field_512 <= 3
    if sub_de78492d[arg1][arg2][('map', ('param', 'arg3'), ('param', 'arg4'))].field_512 == 1:
        return 'PENDING'
    require sub_de78492d[arg1][arg2][('map', ('param', 'arg3'), ('param', 'arg4'))].field_512 <= 3
    if sub_de78492d[arg1][arg2][('map', ('param', 'arg3'), ('param', 'arg4'))].field_512 == 3:
        return 'REJECTED'
    require sub_de78492d[arg1][arg2][('map', ('param', 'arg3'), ('param', 'arg4'))].field_512 <= 3
    if sub_de78492d[arg1][arg2][('map', ('param', 'arg3'), ('param', 'arg4'))].field_512 != 2:
        return 'NONE'
    return 'ACCEPTED'
}

function sub_c6525848(?) payable {
    require calldata.size - 4 >= 96
    require not stor2
    if sub_de78492d[arg1][arg2][('map', ('sha3', 'msg.sender'), ('param', 'arg3'))].field_0 <= 0:
        revert with 0, 'No stake to withdraw'
    sub_de78492d[arg1][arg2][('map', ('sha3', 'msg.sender'), ('param', 'arg3'))].field_0 = 0
    sub_de78492d[arg1][arg2][('map', ('sha3', 'msg.sender'), ('param', 'arg3'))].field_512 = 3
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_de78492d[arg1][arg2][('map', ('sha3', 'msg.sender'), ('param', 'arg3'))].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x7783e9c0: arg3, arg2, arg1
}

function sub_f4aa3e4a(?) payable {
    require calldata.size - 4 >= 128
    require msg.sender == owner
    if sub_de78492d[arg1][arg2][('map', ('param', 'arg3'), ('param', 'arg4'))].field_0 <= 0:
        revert with 0, 'No stake to refund'
    sub_de78492d[arg1][arg2][('map', ('param', 'arg3'), ('param', 'arg4'))].field_0 = 0
    sub_de78492d[arg1][arg2][('map', ('param', 'arg3'), ('param', 'arg4'))].field_512 = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args sub_de78492d[arg1][arg2][('map', ('param', 'arg3'), ('param', 'arg4'))].field_512, sub_de78492d[arg1][arg2][('map', ('param', 'arg3'), ('param', 'arg4'))].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xbebc1485: arg4, sub_de78492d[arg1][arg2][('map', ('param', 'arg3'), ('param', 'arg4'))].field_0, sub_de78492d[arg1][arg2][('map', ('param', 'arg3'), ('param', 'arg4'))].field_520
}

function sub_af09533c(?) payable {
    require calldata.size - 4 >= 192
    require not stor2
    if sub_de78492d[sha3(msg.sender)][arg3][('map', ('param', 'arg1'), ('param', 'arg2'))].field_0 <= 0:
        revert with 0, 'No stake to withdraw'
    signer = erecover(sha3(0x6719457468657265756d205369676e6564204d6573736167653a0a35324d464f5320436f6e7461637420416363657074, sha3(msg.sender)), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if sha3(address(signer)) != arg1:
        revert with 0, 32, 36, 0x3a556e61626c6520746f2076657269667920726563697069656e74207369676e61747572, mem[640 len 28]
    sub_de78492d[sha3(msg.sender)][arg3][('map', ('param', 'arg1'), ('param', 'arg2'))].field_0 = 0
    sub_de78492d[sha3(msg.sender)][arg3][('map', ('param', 'arg1'), ('param', 'arg2'))].field_512 = 2
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_de78492d[sha3(msg.sender)][arg3][('map', ('param', 'arg1'), ('param', 'arg2'))].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x1b289156: arg2, msg.sender
}

function sub_657d236a(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require not stor2
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < requiredStake:
        revert with 0, 'Insufficient balance to stake'
    require sub_de78492d[sha3(msg.sender)][sha3(arg3[all])][('map', ('param', 'arg1'), ('param', 'arg2'))].field_512 <= 3
    if sub_de78492d[sha3(msg.sender)][sha3(arg3[all])][('map', ('param', 'arg1'), ('param', 'arg2'))].field_512 == 1:
        revert with 0, 32, 35, 0x64496e7669746520746f2074686973207573657220616c72656164792070656e64696e, mem[arg3.length + 475 len 29]
    require sub_de78492d[sha3(msg.sender)][sha3(arg3[all])][('map', ('param', 'arg1'), ('param', 'arg2'))].field_512 <= 3
    if sub_de78492d[sha3(msg.sender)][sha3(arg3[all])][('map', ('param', 'arg1'), ('param', 'arg2'))].field_512 == 3:
        revert with 0, 32, 37, 0x64496e7669746520746f2074686973207573657220686173206265656e2072656a65637465, mem[arg3.length + 477 len 27]
    require sub_de78492d[sha3(msg.sender)][sha3(arg3[all])][('map', ('param', 'arg1'), ('param', 'arg2'))].field_512 <= 3
    if sub_de78492d[sha3(msg.sender)][sha3(arg3[all])][('map', ('param', 'arg1'), ('param', 'arg2'))].field_512 == 2:
        revert with 0, 
                    32,
                    45,
                    0xfe496e7669746520746f207468697320757365722068617320616c7265616479206265656e2061636365707465,
                    mem[arg3.length + 485 len 19]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), requiredStake
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_de78492d[sha3(msg.sender)][sha3(arg3[all])][('map', ('param', 'arg1'), ('param', 'arg2'))].field_0 = requiredStake
    sub_de78492d[sha3(msg.sender)][sha3(arg3[all])][('map', ('param', 'arg1'), ('param', 'arg2'))].field_256 = block.number
    sub_de78492d[sha3(msg.sender)][sha3(arg3[all])][('map', ('param', 'arg1'), ('param', 'arg2'))].field_512 = 1
    sub_de78492d[sha3(msg.sender)][sha3(arg3[all])][('map', ('param', 'arg1'), ('param', 'arg2'))].field_520 = msg.sender
    emit 0xbe8c3ac5: arg1, Array(len=arg3.length, data=arg3[all]), msg.sender, requiredStake, arg2
}



}
