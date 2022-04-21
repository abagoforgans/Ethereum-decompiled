contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = 0
    stor0 = msg.sender
    return code.data[91 len 2991]
}



// =====================  Runtime code  =====================


const sub_056acde8(?) = 5

const feeAccount = 0x58686281c6c2972e9cb84002aafe13d97639bec7

const sub_db79b1fe(?) = 0x457f6a6d6eae9a5d9251353eb991089404c7ac68


address owner;
uint256 totalDeposits;
array of address depositContracts;
mapping of uint8 stor3;

function sub_27f2451f(?) {
    return bool(stor3[arg1])
}

function totalDeposits() {
    return totalDeposits
}

function depositContracts(uint256 arg1) {
    require arg1 < depositContracts.length
    return depositContracts[arg1]
}

function owner() {
    return owner
}

function sub_d22d4b41(?) {
    return depositContracts.length
}

function _fallback() {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function sub_4578474d(?) payable {
    require stor3[address(msg.sender)]
    totalDeposits += msg.value
    call 0x58686281c6c2972e9cb84002aafe13d97639bec7 with:
       value 5 * msg.value / 1000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call 0x457f6a6d6eae9a5d9251353eb991089404c7ac68 with:
       value msg.value - (5 * msg.value / 1000) wei
         gas 2300 * is_zero(value) wei
    emit DepositReceived(msg.value, arg1, msg.sender);
}

function sub_15891148(?) {
    require msg.sender == owner
    s = 0
    idx = 0
    while idx < arg1:
        mem[96 len 647] = code.data[2301 len 647]
        mem[743] = this.address
        create contract with 0 wei
                        code: code.data[2301 len 647], this.address
        require create.new_address
        depositContracts.length++
        if not depositContracts.length <= depositContracts.length + 1:
            s = sha3(2) + depositContracts.length + 1
            while sha3(2) + depositContracts.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        depositContracts[depositContracts.length] = address(create.new_address)
        mem[0] = address(create.new_address)
        mem[32] = 3
        stor3[address(create.new_address)] = 1
        mem[96] = depositContracts.length
        emit 0x17b39bef: depositContracts.length, address(create.new_address)
        s = create.new_address
        idx = idx + 1
        continue 
}



}
