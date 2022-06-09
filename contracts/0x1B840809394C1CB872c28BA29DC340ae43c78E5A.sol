contract main {




// =====================  Runtime code  =====================


const UNIT = 1000


address stor0;
array of address stor1;
address stor2;
mapping of address userStructs;
mapping of uint8 stor4;
mapping of uint8 stor5;
mapping of uint256 checkProfit;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 sub_899652f3;
uint256 etherBalance;
uint256 sub_015aca78;
mapping of uint256 sub_6067db6b;

function sub_015aca78(?) {
    return sub_015aca78
}

function userStructs(address arg1) {
    return userStructs[arg1]
}

function sub_6067db6b(?) {
    return sub_6067db6b[arg1]
}

function sub_899652f3(?) {
    return sub_899652f3
}

function checkWhitelistExist(address arg1) {
    return bool(stor5[address(arg1)])
}

function checkProfit(address arg1) {
    return checkProfit[address(arg1)]
}

function etherBalance() {
    return etherBalance
}

function _fallback() payable {
    revert
}

function drainETH() {
    require msg.sender == stor2
    call stor2 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    etherBalance = 0
}

function sub_d83e12d8(?) {
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] > 1000)
}

function sub_ec9c0aad(?) {
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 10000:
        return (ext_call.return_data[0] * stor7 / 100)
    if ext_call.return_data[0] >= 20000:
        return (ext_call.return_data[0] * stor9 / 100)
    return (ext_call.return_data[0] * stor8 / 100)
}

function requestDividends() {
    require stor4[address(msg.sender)]
    if not stor5[address(msg.sender)]:
        require checkProfit[address(msg.sender)] <= 0
    require etherBalance - checkProfit[address(msg.sender)] >= 0
    etherBalance -= checkProfit[address(msg.sender)]
    call msg.sender with:
       value checkProfit[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    checkProfit[address(msg.sender)] = 0
    stor4[address(msg.sender)] = 0
}

function removeWhiteListAddress(address[] arg1) {
    require msg.sender == stor2
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 5
        stor5[address(cd[((32 * idx) + arg1 + 36)])] = 0
        s = 0
        while s < stor1.length:
            require idx < arg1.length
            require s < stor1.length
            mem[0] = 1
            if stor1[s] == address(cd[((32 * idx) + arg1 + 36)]):
                require s < stor1.length
                mem[0] = 1
                stor1[s] = 0
            s = s + 1
            continue 
        idx = idx + 1
        continue 
}

function sub_3a67f530(?) {
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 10000:
        if sub_899652f3:
            return (ext_call.return_data[0] * stor7 / 100 * sub_015aca78 / sub_899652f3)
    else:
        if ext_call.return_data[0] >= 20000:
            if sub_899652f3:
                return (ext_call.return_data[0] * stor9 / 100 * sub_015aca78 / sub_899652f3)
        else:
            if sub_899652f3:
                return (ext_call.return_data[0] * stor8 / 100 * sub_015aca78 / sub_899652f3)
    ('iszero', ('stor', ('name', 'sub_899652f3', 10)))
    revert
}

function addWhiteListAddress(address[] arg1) {
    require msg.sender == stor2
    idx = 0
    while idx < arg1.length:
        stor5[address(cd[((32 * idx) + arg1 + 36)])] = 1
        require idx < arg1.length
        if stor1.length <= 0:
            mem[32] = 3
            userStructs[address(cd[((32 * idx) + arg1 + 36)])] = address(cd[((32 * idx) + arg1 + 36)])
            stor1.length++
            mem[0] = 1
            stor1[stor1.length] = address(cd[((32 * idx) + arg1 + 36)])
        else:
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 3
            if userStructs[address(cd[((32 * idx) + arg1 + 36)])] != address(cd[((32 * idx) + arg1 + 36)]):
                require idx < arg1.length
                mem[32] = 3
                userStructs[address(cd[((32 * idx) + arg1 + 36)])] = address(cd[((32 * idx) + arg1 + 36)])
                stor1.length++
                mem[0] = 1
                stor1[stor1.length] = address(cd[((32 * idx) + arg1 + 36)])
        idx = idx + 1
        continue 
}

function sendEthToContract() payable {
    require msg.sender == stor2
    sub_015aca78 = msg.value
    etherBalance += msg.value
    sub_899652f3 = 0
    s = 0
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        mem[100] = stor1[idx]
        require ext_code.size(stor0)
        call stor0.0x70a08231 with:
             gas gas_remaining wei
            args stor1[idx]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 1000:
            require idx < stor1.length
            if ext_call.return_data[0] < 10000:
                sub_6067db6b[stor1[idx]] = ext_call.return_data[0] * stor7 / 100
            else:
                if ext_call.return_data[0] >= 20000:
                    sub_6067db6b[stor1[idx]] = ext_call.return_data[0] * stor9 / 100
                else:
                    sub_6067db6b[stor1[idx]] = ext_call.return_data[0] * stor8 / 100
            mem[0] = stor1[idx]
            mem[32] = 13
            sub_899652f3 += sub_6067db6b[stor1[idx]]
        s = ext_call.return_data[0]
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor1.length:
        mem[0] = stor1[idx]
        mem[32] = 13
        if sub_6067db6b[stor1[idx]] > 0:
            require idx < stor1.length
            require sub_899652f3
            require idx < stor1.length
            checkProfit[stor1[idx]] += sub_6067db6b[stor1[idx]] * sub_015aca78 / sub_899652f3
            mem[0] = stor1[idx]
            mem[32] = 4
            stor4[stor1[idx]] = 1
        idx = idx + 1
        continue 
}



}
