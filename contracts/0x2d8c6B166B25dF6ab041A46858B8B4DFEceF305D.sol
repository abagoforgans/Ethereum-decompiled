contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;

function _fallback() payable {
    stor8 = 24
    stor9 = 32
    stor10 = 44
    stor11 = 0
    stor12 = 0
    require not msg.value
    stor2 = msg.sender
    stor0 = code.data[7029 len 20]
    return code.data[213 len 6804]
}



// =====================  Runtime code  =====================


const decimals = 3

const UNIT = 1000


address stor0;
array of address stor1;
address stor2;
uint256 totalSupply;
mapping of address userStructs;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint256 checkProfit;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 sub_899652f3;
uint256 etherBalance;
uint256 sub_015aca78;
mapping of uint256 sub_6067db6b;

function sub_015aca78(?) {
    return sub_015aca78
}

function totalSupply() {
    return totalSupply
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

function checkProfit(address arg1) {
    return checkProfit[address(arg1)]
}

function etherBalance() {
    return etherBalance
}

function _fallback() payable {
    revert
}

function checkWhitelistExist(address arg1) {
    if not stor6[address(arg1)]:
        emit Exists(Array(len=9, data='Not Exist'));
        return 0
    emit Exists(Array(len=5, data='Exist'));
    return 1
}

function drainETH() {
    require msg.sender == stor2
    call stor2 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    etherBalance = 0
}

function requestDividends() {
    require stor5[address(msg.sender)]
    if not stor6[address(msg.sender)]:
        require checkProfit[address(msg.sender)] <= 0
    require etherBalance - checkProfit[address(msg.sender)] >= 0
    etherBalance -= checkProfit[address(msg.sender)]
    call msg.sender with:
       value checkProfit[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    checkProfit[address(msg.sender)] = 0
    stor5[address(msg.sender)] = 0
}

function removeWhiteListAddress(address[] arg1) {
    require msg.sender == stor2
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 6
        stor6[address(cd[((32 * idx) + arg1 + 36)])] = 0
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

function addWhiteListAddress(address[] arg1) {
    require msg.sender == stor2
    idx = 0
    while idx < arg1.length:
        stor6[address(cd[((32 * idx) + arg1 + 36)])] = 1
        require idx < arg1.length
        if stor1.length <= 0:
            mem[32] = 4
            userStructs[address(cd[((32 * idx) + arg1 + 36)])] = address(cd[((32 * idx) + arg1 + 36)])
            stor1.length++
            if not stor1.length <= stor1.length + 1:
                s = sha3(1) + stor1.length + 1
                while sha3(1) + stor1.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            mem[0] = 1
            require idx < arg1.length
            stor1[stor1.length] = address(cd[((32 * idx) + arg1 + 36)])
        else:
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 4
            if userStructs[address(cd[((32 * idx) + arg1 + 36)])] != address(cd[((32 * idx) + arg1 + 36)]):
                require idx < arg1.length
                mem[32] = 4
                userStructs[address(cd[((32 * idx) + arg1 + 36)])] = address(cd[((32 * idx) + arg1 + 36)])
                stor1.length++
                if not stor1.length <= stor1.length + 1:
                    s = sha3(1) + stor1.length + 1
                    while sha3(1) + stor1.length > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                mem[0] = 1
                require idx < arg1.length
                stor1[stor1.length] = address(cd[((32 * idx) + arg1 + 36)])
        idx = idx + 1
        continue 
}

function sendEthToContract() payable {
    require msg.sender == stor2
    sub_015aca78 = msg.value
    etherBalance += msg.value
    sub_899652f3 = 0
    idx = 0
    while idx < stor1.length:
        require ext_code.size(stor0)
        call stor0.0x70a08231 with:
             gas gas_remaining - 710 wei
            args stor1[idx]
        require ext_call.success
        require idx < stor1.length
        if ext_call.return_data[0] < 10000:
            mem[128] = 0
            mem[100] = stor1[idx]
            require ext_code.size(stor0)
            call stor0.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args stor1[idx]
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            require idx < stor1.length
            sub_6067db6b[stor1[idx]] = ext_call.return_data[0] * stor8 / 100
        else:
            require ext_code.size(stor0)
            call stor0.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args stor1[idx]
            require ext_call.success
            require idx < stor1.length
            mem[128] = 0
            mem[100] = stor1[idx]
            require ext_code.size(stor0)
            call stor0.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args stor1[idx]
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            require idx < stor1.length
            if ext_call.return_data[0] >= 20000:
                sub_6067db6b[stor1[idx]] = ext_call.return_data[0] * stor10 / 100
            else:
                sub_6067db6b[stor1[idx]] = ext_call.return_data[0] * stor9 / 100
        mem[0] = stor1[idx]
        mem[32] = 14
        sub_899652f3 += sub_6067db6b[stor1[idx]]
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor1.length:
        require sub_899652f3
        require idx < stor1.length
        checkProfit[stor1[idx]] += sub_6067db6b[stor1[idx]] * sub_015aca78 / sub_899652f3
        mem[0] = stor1[idx]
        mem[32] = 5
        stor5[stor1[idx]] = 1
        idx = idx + 1
        continue 
}



}
