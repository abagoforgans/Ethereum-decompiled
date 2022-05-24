contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address tokenAddress;
address beneficiaryAddress;
uint256 releaseTime;
mapping of uint8 stor99;

function beneficiary() {
    return beneficiaryAddress
}

function releaseTime() {
    return releaseTime
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function initialize(address arg1, address arg2, address arg3, uint256 arg4) {
    mem[224 len 0] = None
    _93 = sha3(mem[224 len 13], 0)
    mem[224 len 0] = None
    mem[224 len 27] = mem[224 len 13], 0
    require not stor[_93][mem[224 len 5]]
    require arg4 > block.timestamp
    tokenAddress = arg2
    beneficiaryAddress = arg3
    releaseTime = arg4
    emit Migrated(string arg1, string arg2):
                  64,
                  128,
                  13,
                  'TokenTimelock' << 152,
                  5,
                  '1.9.0' % 1099511627776,
    stor0[0] = 1
}

function release() {
    require block.timestamp >= releaseTime
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args beneficiaryAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function isMigrated(string arg1, string arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    _22 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[ceil32(arg1.length) + -(arg2.length % 32) + floor32(arg2.length) + 192 len arg2.length % 32]
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = _22
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = bool(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]])
    return memory
      from ceil32(arg1.length) + ceil32(arg2.length) + 160
       len 32
}



}
