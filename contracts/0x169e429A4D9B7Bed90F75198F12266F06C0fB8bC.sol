contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
address stor5;
array of struct transactions;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function transactions(uint256 arg1) {
    require arg1 < transactions.length
    return transactions[arg1].field_0, transactions[arg1].field_256, transactions[arg1].field_512, transactions[arg1].field_768
}

function _fallback() payable {
    revert
}

function cashOut() {
    require msg.sender == stor5
    call stor5 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_579f8647(?) payable {
    require msg.value >= 10^15
    transactions.length++
    transactions[transactions.length].field_0 = msg.sender
    transactions[transactions.length].field_256 = msg.value
    transactions[transactions.length].field_512 = 0
    transactions[transactions.length].field_768 = arg1
}

function resetState() {
    require msg.sender == stor5
    transactions.length = 0
    idx = 0
    while 4 * transactions.length > idx:
        transactions[idx].field_0 = 0
        transactions[idx].field_256 = 0
        transactions[idx].field_512 = 0
        transactions[idx].field_768 = 0
        idx = idx + 4
        continue 
    call stor5 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b48b3714(?) {
    require msg.sender == stor5
    require arg1 < transactions.length
    if not transactions[arg1].field_512:
        transactions[arg1].field_512 = arg2
        if arg2 == 1:
            require transactions[arg1].field_0
            require balanceOf[stor5] >= transactions[arg1].field_768 * 10^decimals
            require balanceOf[stor6[arg1].field_0] + (transactions[arg1].field_768 * 10^decimals) >= balanceOf[stor6[arg1].field_0]
            balanceOf[stor5] += -1 * transactions[arg1].field_768 * 10^decimals
            balanceOf[stor6[arg1].field_0] += transactions[arg1].field_768 * 10^decimals
            emit Transfer((transactions[arg1].field_768 * 10^decimals), stor5, transactions[arg1].field_0);
            require balanceOf[stor5] + balanceOf[stor6[arg1].field_0] == balanceOf[stor5] + balanceOf[stor6[arg1].field_0]
        if arg2 >= 2:
            call transactions[arg1].field_0 with:
               value transactions[arg1].field_256 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Transfer(transactions[arg1].field_256, this.address, transactions[arg1].field_0);
}

function getTransactions() {
    mem[96] = transactions.length
    if not transactions.length:
        mem[(32 * transactions.length) + 128] = transactions.length
        mem[(64 * transactions.length) + 160] = transactions.length
        mem[(98 * transactions.length) + 192] = transactions.length
        mem[(131 * transactions.length) + 224] = transactions.length
        mem[64] = (164 * transactions.length) + 256
        idx = 0
        while idx < transactions.length:
            require idx < mem[96]
            mem[(32 * idx) + 128] = transactions[idx].field_0
            require idx < transactions.length
            require idx < mem[(32 * transactions.length) + 128]
            mem[(32 * idx) + (32 * transactions.length) + 160] = transactions[idx].field_256
            require idx < transactions.length
            require idx < mem[(64 * transactions.length) + 160]
            mem[(32 * idx) + (64 * transactions.length) + 192] = transactions[idx].field_512
            require idx < transactions.length
            mem[0] = 6
            require idx < mem[(98 * transactions.length) + 192]
            mem[(32 * idx) + (98 * transactions.length) + 224] = transactions[idx].field_768
            require idx < mem[(131 * transactions.length) + 224]
            mem[(32 * idx) + (131 * transactions.length) + 256] = idx
            idx = idx + 1
            continue 
        mem[mem[64]] = 160
        mem[mem[64] + 160] = mem[96]
        _64 = mem[96]
        mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 192
        mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * transactions.length) + 128]
        _115 = mem[(32 * transactions.length) + 128]
        mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * transactions.length) + 128])] = mem[(32 * transactions.length) + 160 len floor32(mem[(32 * transactions.length) + 128])]
        mem[mem[64] + 64] = (32 * _115) + (32 * mem[96]) + 224
        mem[(32 * _115) + (32 * mem[96]) + mem[64] + 224] = mem[(64 * transactions.length) + 160]
        _143 = mem[(64 * transactions.length) + 160]
        mem[(32 * _115) + (32 * mem[96]) + mem[64] + 256 len floor32(mem[(64 * transactions.length) + 160])] = mem[(64 * transactions.length) + 192 len floor32(mem[(64 * transactions.length) + 160])]
        mem[mem[64] + 96] = (32 * _143) + (32 * _115) + (32 * mem[96]) + 256
        mem[(32 * _143) + (32 * _115) + (32 * mem[96]) + mem[64] + 256] = mem[(98 * transactions.length) + 192]
        _165 = mem[(98 * transactions.length) + 192]
        mem[(32 * _143) + (32 * _115) + (32 * mem[96]) + mem[64] + 288 len floor32(mem[(98 * transactions.length) + 192])] = mem[(98 * transactions.length) + 224 len floor32(mem[(98 * transactions.length) + 192])]
        mem[mem[64] + 128] = (32 * _165) + (32 * _143) + (32 * _115) + (32 * mem[96]) + 288
        mem[(32 * _165) + (32 * _143) + (32 * _115) + (32 * _64) + mem[64] + 288] = mem[(131 * transactions.length) + 224]
        _181 = mem[(131 * transactions.length) + 224]
        mem[(32 * _165) + (32 * _143) + (32 * _115) + (32 * _64) + mem[64] + 320 len floor32(mem[(131 * transactions.length) + 224])] = mem[(131 * transactions.length) + 256 len floor32(mem[(131 * transactions.length) + 224])]
        return 160, mem[mem[64] + 32 len (32 * _181) + (32 * _165) + (32 * _143) + (32 * _115) + (32 * _64) + 288]
    mem[128 len 32 * transactions.length] = code.data[4808 len 32 * transactions.length]
    mem[(32 * transactions.length) + 128] = transactions.length
    mem[(32 * transactions.length) + 160 len 32 * transactions.length] = code.data[4808 len 32 * transactions.length]
    mem[(64 * transactions.length) + 160] = transactions.length
    mem[(64 * transactions.length) + 192 len 32 * transactions.length] = code.data[4808 len 32 * transactions.length]
    mem[(98 * transactions.length) + 192] = transactions.length
    mem[(98 * transactions.length) + 224 len 32 * transactions.length] = code.data[4808 len 32 * transactions.length]
    mem[(131 * transactions.length) + 224] = transactions.length
    mem[64] = (164 * transactions.length) + 256
    mem[(131 * transactions.length) + 256 len 32 * transactions.length] = code.data[4808 len 32 * transactions.length]
    idx = 0
    while idx < transactions.length:
        require idx < mem[96]
        mem[(32 * idx) + 128] = transactions[idx].field_0
        require idx < transactions.length
        require idx < mem[(32 * transactions.length) + 128]
        mem[(32 * idx) + (32 * transactions.length) + 160] = transactions[idx].field_256
        require idx < transactions.length
        require idx < mem[(64 * transactions.length) + 160]
        mem[(32 * idx) + (64 * transactions.length) + 192] = transactions[idx].field_512
        require idx < transactions.length
        mem[0] = 6
        require idx < mem[(98 * transactions.length) + 192]
        mem[(32 * idx) + (98 * transactions.length) + 224] = transactions[idx].field_768
        require idx < mem[(131 * transactions.length) + 224]
        mem[(32 * idx) + (131 * transactions.length) + 256] = idx
        idx = idx + 1
        continue 
    mem[mem[64]] = 160
    mem[mem[64] + 160] = mem[96]
    _69 = mem[96]
    mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 192
    mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * transactions.length) + 128]
    _118 = mem[(32 * transactions.length) + 128]
    mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * transactions.length) + 128])] = mem[(32 * transactions.length) + 160 len floor32(mem[(32 * transactions.length) + 128])]
    mem[mem[64] + 64] = (32 * _118) + (32 * mem[96]) + 224
    mem[(32 * _118) + (32 * mem[96]) + mem[64] + 224] = mem[(64 * transactions.length) + 160]
    _146 = mem[(64 * transactions.length) + 160]
    mem[(32 * _118) + (32 * mem[96]) + mem[64] + 256 len floor32(mem[(64 * transactions.length) + 160])] = mem[(64 * transactions.length) + 192 len floor32(mem[(64 * transactions.length) + 160])]
    mem[mem[64] + 96] = (32 * _146) + (32 * _118) + (32 * mem[96]) + 256
    mem[(32 * _146) + (32 * _118) + (32 * mem[96]) + mem[64] + 256] = mem[(98 * transactions.length) + 192]
    _168 = mem[(98 * transactions.length) + 192]
    mem[(32 * _146) + (32 * _118) + (32 * _69) + mem[64] + 288 len floor32(mem[(98 * transactions.length) + 192])] = mem[(98 * transactions.length) + 224 len floor32(mem[(98 * transactions.length) + 192])]
    mem[mem[64] + 128] = (32 * _168) + (32 * _146) + (32 * _118) + (32 * _69) + 288
    mem[(32 * _168) + (32 * _146) + (32 * _118) + (32 * _69) + mem[64] + 288] = mem[(131 * transactions.length) + 224]
    _184 = mem[(131 * transactions.length) + 224]
    mem[(32 * _168) + (32 * _146) + (32 * _118) + (32 * _69) + mem[64] + 320 len floor32(mem[(131 * transactions.length) + 224])] = mem[(131 * transactions.length) + 256 len floor32(mem[(131 * transactions.length) + 224])]
    return 160, 
           mem[mem[64] + 32 len 96],
           (32 * _168) + (32 * _146) + (32 * _118) + (32 * _69) + 288,
           mem[mem[64] + 160 len (32 * _184) + (32 * _168) + (32 * _146) + (32 * _118) + (32 * _69) + 160]
}



}
