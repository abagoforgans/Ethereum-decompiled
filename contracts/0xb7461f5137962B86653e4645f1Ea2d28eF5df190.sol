contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 batchLimit; offset 8
address stor0;
address owner; offset 16
mapping of uint256 balances;
uint256 totalReward;
address sub_c2968efeAddress;

function batchLimit() {
    return batchLimit
}

function balanceOf(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function suspended() {
    return bool(uint8(stor0.field_0))
}

function totalReward() {
    return totalReward
}

function balances(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function owner() {
    return owner
}

function sub_c2968efe(?) {
    return sub_c2968efeAddress
}

function _fallback() payable {
    revert
}

function suspend(bool arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    uint8(stor0.field_0) = uint8(arg1)
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    owner = arg1
}

function setBatchLimit(uint8 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 > 0
    batchLimit = arg1
}

function setAdbankContract(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    sub_c2968efeAddress = arg1
}

function hasEnoughBalance() {
    require ext_code.size(sub_c2968efeAddress)
    staticcall sub_c2968efeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0] >= totalReward
}

function drain() {
    require msg.sender == owner
    require ext_code.size(sub_c2968efeAddress)
    staticcall sub_c2968efeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require msg.sender == owner
    require ext_code.size(sub_c2968efeAddress)
    call sub_c2968efeAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(stor0.field_0), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    uint8(stor0.field_0) = 1
}

function claimReward(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require not uint8(stor0.field_0)
    require msg.sender == owner
    require not uint8(stor0.field_0)
    require msg.sender == owner
    require arg2
    require balances[arg1] > 0
    balances[arg1] = 0
    require balances[arg1] <= totalReward
    totalReward -= balances[arg1]
    require msg.sender == owner
    require ext_code.size(sub_c2968efeAddress)
    call sub_c2968efeAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), balances[arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0xfe236dfc: arg1, address(arg2), balances[arg1]
    return bool(ext_call.return_data[0])
}

function sub_2b175a07(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require not uint8(stor0.field_0)
    require msg.sender == owner
    require ('cd', 4).length > 0
    require ('cd', 4).length <= batchLimit
    require ('cd', 4).length == ('cd', 36).length
    idx = 0
    while uint8(idx) < ('cd', 4).length:
        require uint8(idx) < ('cd', 36).length
        require uint8(idx) < ('cd', 4).length
        require balances[cd[((32 * uint8(idx)) + cd[4] + 36)]] + cd[((32 * uint8(idx)) + cd[36] + 36)] >= balances[cd[((32 * uint8(idx)) + cd[4] + 36)]]
        require uint8(idx) < ('cd', 4).length
        mem[0] = cd[((32 * uint8(idx)) + cd[4] + 36)]
        mem[32] = 1
        balances[cd[((32 * uint8(idx)) + cd[4] + 36)]] += cd[((32 * uint8(idx)) + cd[36] + 36)]
        require uint8(idx) < ('cd', 36).length
        require totalReward + cd[((32 * uint8(idx)) + cd[36] + 36)] >= totalReward
        totalReward += cd[((32 * uint8(idx)) + cd[36] + 36)]
        require uint8(idx) < ('cd', 4).length
        require uint8(idx) < ('cd', 36).length
        mem[96] = cd[((32 * uint8(idx)) + cd[4] + 36)]
        mem[128] = cd[((32 * uint8(idx)) + cd[36] + 36)]
        emit 0xbc24dfbc: cd[((32 * uint8(idx)) + cd[4] + 36)], cd[((32 * uint8(idx)) + cd[36] + 36)]
        idx = idx + 1
        continue 
    require ext_code.size(sub_c2968efeAddress)
    staticcall sub_c2968efeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= totalReward
}

function sub_4caae738(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require not uint8(stor0.field_0)
    require msg.sender == owner
    require ('cd', 4).length > 0
    require ('cd', 4).length <= batchLimit
    require ('cd', 4).length == ('cd', 36).length
    require ext_code.size(sub_c2968efeAddress)
    staticcall sub_c2968efeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= totalReward
    idx = 0
    while uint8(idx) < ('cd', 4).length:
        require uint8(idx) < ('cd', 36).length
        require not uint8(stor0.field_0)
        require msg.sender == owner
        if address(cd[((32 * uint8(idx)) + cd[36] + 36)]):
            mem[0] = cd[((32 * uint8(idx)) + cd[4] + 36)]
            mem[32] = 1
            if balances[cd[((32 * uint8(idx)) + cd[4] + 36)]] > 0:
                mem[0] = cd[((32 * uint8(idx)) + cd[4] + 36)]
                mem[32] = 1
                balances[cd[((32 * uint8(idx)) + cd[4] + 36)]] = 0
                require balances[cd[((32 * uint8(idx)) + cd[4] + 36)]] <= totalReward
                totalReward -= balances[cd[((32 * uint8(idx)) + cd[4] + 36)]]
                require msg.sender == owner
                require ext_code.size(sub_c2968efeAddress)
                call sub_c2968efeAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[((32 * uint8(idx)) + cd[36] + 36)]), balances[cd[((32 * uint8(idx)) + cd[4] + 36)]]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                mem[mem[64]] = cd[((32 * uint8(idx)) + cd[4] + 36)]
                mem[mem[64] + 32] = address(cd[((32 * uint8(idx)) + cd[36] + 36)])
                mem[mem[64] + 64] = balances[cd[((32 * uint8(idx)) + cd[4] + 36)]]
                emit 0xfe236dfc: cd[((32 * uint8(idx)) + cd[4] + 36)], address(cd[((32 * uint8(idx)) + cd[36] + 36)]), balances[cd[((32 * uint8(idx)) + cd[4] + 36)]]
        idx = idx + 1
        continue 
}



}
