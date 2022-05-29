contract main {




// =====================  Runtime code  =====================


const DATE_31_DEC_2019 = 1577836799

const DATE_31_DEC_2018 = 1546300799

const DATE_31_DEC_2021 = 1640995199

const DATE_31_DEC_2020 = 1609459199

const DATE_31_DEC_2022 = 1672531199

const DATE_01_JUN_2018 = (424392 * 24 * 3600)


array of struct stor0;
address tokenAddress;

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    mem[64] = ceil32(arg3.length) + 128
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    require msg.sender == tokenAddress
    require var12001 < stor0.length
    mem[0] = 0
    if stor0[var12001].field_0 > block.timestamp:
        var12001 = var12001 + 1
        continue 
    require var12001 < stor0.length
    mem[0] = 0
    if block.timestamp > stor0[var12001].field_256:
        var12001 = var12001 + 1
        continue 
    require ext_code.size(tokenAddress)
    call tokenAddress.0x42966c68 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require var12001 < stor0.length
    emit Burn(address(arg1), arg2, stor0[var12001].field_512);
}



}
