contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint8 stor3;

function _fallback() payable {
    stor1 = 0x4c0eb3477a028410c1feb3ebab697f34b7079ac2
    stor2 = 0
    stor3 = 0
    stor0 = msg.sender
    return code.data[102 len 2351]
}



// =====================  Runtime code  =====================


const sub_056acde8(?) = 5

const sub_5e12e6be(?) = 5

const feeAccount = 0x36f49aa07ee3ef4aa9f9ae7cec4c67d584b2528c

const sub_db79b1fe(?) = 0xd944d6af3d7b9fca8097814a02233e6b836671d4

const sub_dce6b447(?) = (415584 * 24 * 3600)

const sub_ff354703(?) = 1492055996


address owner;
address sub_e70b5750Address;
uint256 totalDeposits;
uint8 stor3;
array of address depositContracts;
mapping of uint8 stor5;

function sub_2116da5b(?) {
    return bool(stor3)
}

function sub_27f2451f(?) {
    return bool(stor5[arg1])
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

function sub_e70b5750(?) {
    return sub_e70b5750Address
}

function _fallback() {
    revert 
}

function sub_84f08c6b(?) {
    require owner == msg.sender
    stor3 = uint8(arg1)
    emit 0x128cd232: bool(uint8(arg1))
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_4578474d(?) payable {
    require block.timestamp >= 1492055996
    require block.timestamp <= 415584 * 24 * 3600
    require stor5[address(msg.sender)]
    require not stor3
    totalDeposits += msg.value
    call sub_e70b5750Address with:
       value 5 * msg.value / 1000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call 0x36f49aa07ee3ef4aa9f9ae7cec4c67d584b2528c with:
       value 5 * msg.value / 1000 wei
         gas 2300 * is_zero(value) wei
    call 0xd944d6af3d7b9fca8097814a02233e6b836671d4 with:
       value msg.value - (2 * 5 * msg.value / 1000) wei
         gas 2300 * is_zero(value) wei
    emit DepositReceived(msg.value, arg1, msg.sender);
}

function sub_15891148(?) {
    require owner == msg.sender
    s = 0
    idx = 0
    while idx < arg1:
        mem[96 len 389] = code.data[1919 len 389]
        mem[485] = this.address
        create contract with 0 wei
                        code: code.data[1919 len 389], this.address
        require create.new_address
        depositContracts.length++
        if not depositContracts.length <= depositContracts.length + 1:
            s = depositContracts.length + sha3(4) + 1
            while sha3(4) + depositContracts.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        depositContracts[depositContracts.length] = address(create.new_address)
        mem[0] = address(create.new_address)
        mem[32] = 5
        stor5[address(create.new_address)] = 1
        mem[96] = depositContracts.length
        emit 0x17b39bef: depositContracts.length, address(create.new_address)
        s = create.new_address
        idx = idx + 1
        continue 
}



}
