contract main {




// =====================  Runtime code  =====================


#
#  - externalTokenTransfer(address arg1, address arg2, uint256 arg3)
#
address owner;
array of uint256 orgName;
address nativeTokenAddress;
address nativeReputationAddress;

function orgName() {
    return orgName[0 len orgName.length]
}

function nativeReputation() {
    return nativeReputationAddress
}

function owner() {
    return owner
}

function nativeToken() {
    return nativeTokenAddress
}

function isOwner() {
    return (msg.sender == owner)
}

function _fallback() payable {
    emit ReceiveEther(msg.value, msg.sender);
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sendEther(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit SendEther(arg1, arg2);
    return 1
}

function externalTokenTransferFrom(address arg1, address arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require msg.sender == owner
    require ext_code.size(arg1) > 0
    mem[324 len 96] = Mask(32, 224, sha3(0xfe7472616e7366657246726f6d28616464726573732c616464726573732c75696e74323536)) >> 224, address(arg2) << 64, 0, address(arg3), Mask(224, 32, arg4) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg4) << 480, mem[420 len 4]
    require return_data.size
    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require ext_call.success
    if return_data.size:
        require 32 == return_data.size
        require 31 < return_data.size
        require Mask(8, 248, mem[387])
    emit ExternalTokenTransferFrom(address(arg2), address(arg3), arg4, arg1);
    return 1
}

function externalTokenApproval(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require ext_code.size(arg1) > 0
    if arg3:
        require ext_code.size(arg1)
        staticcall arg1.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require not ext_call.return_data[0]
    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[324 len 4]
    require return_data.size
    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require ext_call.success
    if return_data.size:
        require 32 == return_data.size
        require 31 < return_data.size
        require Mask(8, 224, mem[323 len 29]) << 24
    emit ExternalTokenApproval(address(arg2), arg3, arg1);
    return 1
}

function metaData(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require msg.sender == owner
    mem[ceil32(arg1.length) + 128] = 32
    mem[ceil32(arg1.length) + 160] = arg1.length
    mem[ceil32(arg1.length) + 192 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit MetaData(string arg1):
                      Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                      mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
                      Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256,
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 192] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32]
        emit MetaData(string arg1):
                      Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                      mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
                      Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                      mem[(2 * ceil32(arg1.length)) + 192 len floor32(arg1.length) + -ceil32(arg1.length) + 32],
    mem[ceil32(arg1.length) + 128] = 1
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function genericCall(address arg1, bytes arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require msg.sender == owner
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    call arg1 with:
       funct Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256
       value arg3 wei
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    if not return_data.size:
        mem[ceil32(arg2.length) + 160] = arg3
        mem[ceil32(arg2.length) + 128] = 96
        mem[ceil32(arg2.length) + 224] = arg2.length
        mem[ceil32(arg2.length) + 256 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit GenericCall(address arg1, bytes arg2, uint256 arg3, bool arg4):
                             Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                             mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32],
                             bool(ext_call.success),
                             arg2.length,
                             Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256,
                             arg1,
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 256] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 288 len arg2.length % 32]
            emit GenericCall(address arg1, bytes arg2, uint256 arg3, bool arg4):
                             Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                             mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32],
                             bool(ext_call.success),
                             arg2.length,
                             Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                             mem[(2 * ceil32(arg2.length)) + 256 len floor32(arg2.length) + -ceil32(arg2.length) + 32],
                             arg1,
        mem[ceil32(arg2.length) + 128] = bool(ext_call.success)
        mem[ceil32(arg2.length) + 160] = 64
        mem[ceil32(arg2.length) + 224 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), 
                   mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32],
                   arg2.length,
                   Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256
        mem[floor32(arg2.length) + ceil32(arg2.length) + 224] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 256 len arg2.length % 32]
        return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), 
               mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32],
               arg2.length,
               Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
               mem[(2 * ceil32(arg2.length)) + 224 len floor32(arg2.length) + -ceil32(arg2.length) + 32]
    mem[64] = ceil32(arg2.length) + ceil32(return_data.size) + 129
    mem[ceil32(arg2.length) + 128] = return_data.size
    mem[ceil32(arg2.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 225] = arg2.length
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 257 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    emit GenericCall(Array(len=arg2.length, data=arg2[all]), arg3, bool(ext_call.success), arg1);
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 129] = bool(ext_call.success)
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 161] = 64
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 193] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 225 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
        return memory
          from ceil32(arg2.length) + ceil32(return_data.size) + 129
           len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 96
    mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + ceil32(return_data.size) + 225] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + ceil32(return_data.size) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 257 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
    return memory
      from ceil32(arg2.length) + ceil32(return_data.size) + 129
       len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 128
}



}
