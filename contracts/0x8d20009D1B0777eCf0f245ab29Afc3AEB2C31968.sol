contract main {




// =====================  Runtime code  =====================


const canTransferTokens = 0


address owner;
address m_tokenAddress;
address sub_de1a4d8bAddress;
mapping of uint256 sub_6316d30f;
array of uint256 sub_e182663c;
uint256 transferredTokens;

function sub_6316d30f(?) {
    return sub_6316d30f[arg1]
}

function m_token() {
    return m_tokenAddress
}

function owner() {
    return owner
}

function transferredTokens() {
    return transferredTokens
}

function sub_de1a4d8b(?) {
    return sub_de1a4d8bAddress
}

function sub_e182663c(?) {
    require arg1 < sub_e182663c.length
    return sub_e182663c[arg1]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawDividends(uint256 arg1) {
    require msg.sender == owner
    require arg1
    require ext_code.size(sub_de1a4d8bAddress)
    call sub_de1a4d8bAddress.' \(x' with:
         gas gas_remaining wei
        args owner, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getTokenAmount() {
    require ext_code.size(m_tokenAddress)
    call m_tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_b0a63b88(?) {
    require ext_code.size(sub_de1a4d8bAddress)
    call sub_de1a4d8bAddress.getDividendBalance(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getCurrentStage() {
    require sub_e182663c.length
    idx = sub_e182663c.length - 1
    while idx > 0:
        require idx < sub_e182663c.length
        mem[0] = 4
        if block.timestamp >= sub_e182663c[idx]:
            idx = idx - 1
            continue 
        require idx - 1 < sub_e182663c.length
        mem[0] = 4
        if block.timestamp < sub_e182663c[idx]:
            idx = idx - 1
            continue 
        return idx
    return 0
}

function addStage(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg1 >= block.timestamp
    if not sub_e182663c.length:
        sub_e182663c.length++
        sub_e182663c[sub_e182663c.length] = arg1
        sub_6316d30f[0] = arg2
    else:
        require sub_e182663c.length - 1 < sub_e182663c.length
        require arg1 > sub_e182663c[sub_e182663c.length]
        require arg2 > sub_6316d30f[stor4.length - 1]
        sub_e182663c.length++
        sub_e182663c[sub_e182663c.length] = arg1
        sub_6316d30f[stor4.length] = arg2
}

function canTransferToken(uint256 arg1) {
    if 0 == sub_e182663c.length:
        return 0
    if not arg1:
        return 0
    require sub_e182663c.length - 1 < sub_e182663c.length
    if sub_e182663c[sub_e182663c.length] > block.timestamp:
        require sub_e182663c.length
        idx = sub_e182663c.length - 1
        while idx > 0:
            require idx < sub_e182663c.length
            mem[0] = 4
            if block.timestamp >= sub_e182663c[idx]:
                idx = idx - 1
                continue 
            require idx - 1 < sub_e182663c.length
            mem[0] = 4
            if block.timestamp < sub_e182663c[idx]:
                idx = idx - 1
                continue 
            if arg1 + transferredTokens > sub_6316d30f[idx]:
                return 0
            return 1
        if arg1 + transferredTokens > sub_6316d30f[0]:
            return 0
    return 1
}

function transferTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require sub_e182663c.length != 0
    require arg2
    require sub_e182663c.length - 1 < sub_e182663c.length
    if sub_e182663c[sub_e182663c.length] > block.timestamp:
        require sub_e182663c.length
        idx = sub_e182663c.length - 1
        while idx > 0:
            require idx < sub_e182663c.length
            mem[0] = 4
            if block.timestamp >= sub_e182663c[idx]:
                idx = idx - 1
                continue 
            require idx - 1 < sub_e182663c.length
            mem[0] = 4
            if block.timestamp < sub_e182663c[idx]:
                idx = idx - 1
                continue 
            require arg2 + transferredTokens <= sub_6316d30f[idx]
            require arg1
            require arg2
            require ext_code.size(m_tokenAddress)
            call m_tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            transferredTokens += arg2
        require arg2 + transferredTokens <= sub_6316d30f[0]
    require arg1
    require arg2
    require ext_code.size(m_tokenAddress)
    call m_tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    transferredTokens += arg2
}



}
