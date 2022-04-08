contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
uint256 stor6;
uint256 stor8;

function _fallback() payable {
    stor6 = 0
    stor8 = 10^16
    require not msg.value
    stor0 = msg.sender
    stor1 = code.data[10519 len 20]
    stor2 = code.data[10551 len 20]
    stor3 = code.data[10583 len 20]
    return code.data[153 len 10354]
}



// =====================  Runtime code  =====================


address mainAddress;
address sub_a7ede364Address;
address repTokenAddress;
address sub_768c7bdbAddress;
mapping of address sub_5c227c36;
mapping of uint256 sub_bad03c29;
uint256 sub_8ecd2e9e;
mapping of address sub_233baab3;
uint256 sub_ff665e53;

function mainAddress() {
    return mainAddress
}

function sub_1dbd08a6(?) {
    return repTokenAddress
}

function sub_233baab3(?) {
    return sub_233baab3[arg1]
}

function sub_5c227c36(?) {
    return sub_5c227c36[address(arg1)][arg2]
}

function sub_768c7bdb(?) {
    return sub_768c7bdbAddress
}

function sub_8229a57c(?) {
    return sub_8ecd2e9e
}

function sub_8ecd2e9e(?) {
    return sub_8ecd2e9e
}

function sub_a7ede364(?) {
    return sub_a7ede364Address
}

function sub_bad03c29(?) {
    return sub_bad03c29[address(arg1)]
}

function sub_c6311aab(?) {
    return sub_ff665e53
}

function getRepTokenAddress() {
    return repTokenAddress
}

function sub_ff665e53(?) {
    return sub_ff665e53
}

function sub_8738ea2f(?) {
    require ext_code.size(repTokenAddress)
    call repTokenAddress.0x475a9fa9 with:
         gas gas_remaining - 710 wei
        args address(arg1), 10 * arg2
    require ext_call.success
}

function _fallback() payable {
    require msg.value >= sub_ff665e53
    call sub_a7ede364Address with:
       value sub_ff665e53 wei
         gas 200000 wei
    require ext_call.success
    create contract with 0 wei
                    code: code.data[2197 len 8114], mainAddress, msg.sender, sub_a7ede364Address, 0, sub_768c7bdbAddress
    require create.new_address
    sub_5c227c36[address(msg.sender)][stor5[address(msg.sender)]] = address(create.new_address)
    sub_bad03c29[address(msg.sender)]++
    sub_233baab3[stor6] = address(create.new_address)
    sub_8ecd2e9e++
}

function sub_78c04409(?) payable {
    require msg.value >= sub_ff665e53
    call sub_a7ede364Address with:
       value sub_ff665e53 wei
         gas 200000 wei
    require ext_call.success
    create contract with 0 wei
                    code: code.data[2197 len 8114], mainAddress, msg.sender, sub_a7ede364Address, 1, sub_768c7bdbAddress
    require create.new_address
    sub_5c227c36[address(msg.sender)][stor5[address(msg.sender)]] = address(create.new_address)
    sub_bad03c29[address(msg.sender)]++
    sub_233baab3[stor6] = address(create.new_address)
    sub_8ecd2e9e++
    return 0
}

function sub_ade12b49(?) payable {
    require msg.value >= sub_ff665e53
    call sub_a7ede364Address with:
       value sub_ff665e53 wei
         gas 200000 wei
    require ext_call.success
    create contract with 0 wei
                    code: code.data[2197 len 8114], mainAddress, msg.sender, sub_a7ede364Address, 0, sub_768c7bdbAddress
    require create.new_address
    sub_5c227c36[address(msg.sender)][stor5[address(msg.sender)]] = address(create.new_address)
    sub_bad03c29[address(msg.sender)]++
    sub_233baab3[stor6] = address(create.new_address)
    sub_8ecd2e9e++
    return 0
}

function sub_ae27cc58(?) payable {
    require msg.value >= sub_ff665e53
    call sub_a7ede364Address with:
       value sub_ff665e53 wei
         gas 200000 wei
    require ext_call.success
    create contract with 0 wei
                    code: code.data[2197 len 8114], mainAddress, msg.sender, sub_a7ede364Address, arg1, sub_768c7bdbAddress
    require create.new_address
    sub_5c227c36[address(msg.sender)][stor5[address(msg.sender)]] = address(create.new_address)
    sub_bad03c29[address(msg.sender)]++
    sub_233baab3[stor6] = address(create.new_address)
    sub_8ecd2e9e++
    return address(create.new_address)
}

function sub_d54772bc(?) {
    s = 0
    idx = 0
    s = 0
    while idx < sub_8ecd2e9e:
        mem[0] = idx
        mem[32] = 7
        mem[128] = 0
        require ext_code.size(sub_233baab3[idx])
        call sub_233baab3[idx].getState() with:
             gas gas_remaining - 710 wei
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0] <= 6
        if ext_call.return_data[0] != 4:
            s = sub_233baab3[idx]
            idx = idx + 1
            s = s
            continue 
        s = sub_233baab3[idx]
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function sub_23e6da00(?) {
    s = 0
    idx = 0
    s = 0
    while idx < sub_8ecd2e9e:
        mem[0] = idx
        mem[32] = 7
        mem[128] = 0
        require ext_code.size(sub_233baab3[idx])
        call sub_233baab3[idx].getState() with:
             gas gas_remaining - 710 wei
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0] <= 6
        if ext_call.return_data[0] != 4:
            s = sub_233baab3[idx]
            idx = idx + 1
            s = s
            continue 
        if s != arg1:
            s = sub_233baab3[idx]
            idx = idx + 1
            s = s + 1
            continue 
        return sub_233baab3[idx]
    return 0
}



}
