contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint8 stor3; offset 160
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint8 stor10;

function _fallback() payable {
    stor2 = 0
    uint8(stor3.field_160) = 0
    stor4 = 0
    stor5 = 0
    stor7 = 0
    stor8 = 0
    stor10 = 0
    require not msg.value
    mem[96 len -9192] = code.data[10437 len -9192]
    mem[64] = -9096
    require mem[108 len 20]
    require mem[224]
    require mem[268 len 20]
    stor1 = mem[268 len 20]
    stor6 = 10^18 * mem[224]
    stor0 = mem[108 len 20]
    mem[-6158] = mem[mem[128] + 96]
    _10 = mem[mem[128] + 96]
    mem[-6126 len ceil32(mem[mem[128] + 96])] = mem[mem[128] + 128 len ceil32(mem[mem[128] + 96])]
    if not _10 % 32:
        mem[_10 - 6126] = mem[mem[160] + 96]
        _59 = mem[mem[160] + 96]
        mem[_10 - 6094 len ceil32(mem[mem[160] + 96])] = mem[mem[160] + 128 len ceil32(mem[mem[160] + 96])]
        if not _59 % 32:
            create contract with 0 wei
                            code: code.data[7595 len 2842], 96, _10 + 128, 0, mem[-6158 len _59 + _10 + 64]
        else:
            mem[floor32(_59) + _10 - 6094] = mem[floor32(_59) + _10 + -(_59 % 32) - 6062 len _59 % 32]
            create contract with 0 wei
                            code: code.data[7595 len 2842], 96, _10 + 128, 0, mem[-6158 len floor32(_59) + _10 + 96]
    else:
        mem[floor32(_10) - 6126] = mem[floor32(_10) + -(_10 % 32) - 6094 len _10 % 32]
        mem[floor32(_10) - 6094] = mem[mem[160] + 96]
        _62 = mem[mem[160] + 96]
        mem[floor32(_10) - 6062 len ceil32(mem[mem[160] + 96])] = mem[mem[160] + 128 len ceil32(mem[mem[160] + 96])]
        if not _62 % 32:
            create contract with 0 wei
                            code: code.data[7595 len 2842], 96, floor32(_10) + 160, 0, mem[-6158 len _62 + floor32(_10) + 96]
        else:
            mem[floor32(_62) + floor32(_10) - 6062] = mem[floor32(_62) + floor32(_10) + -(_62 % 32) - 6030 len _62 % 32]
            create contract with 0 wei
                            code: code.data[7595 len 2842], 96, floor32(_10) + 160, 0, mem[-6158 len floor32(_62) + floor32(_10) + 128]
    require create.new_address
    address(stor3.field_0) = address(create.new_address)
    stor10 = 0
    emit LogStateSwitch(0);
    require stor0 == msg.sender
    uint8(stor3.field_160) = mem[223 len 1]
    emit 0xb0bbb531: mem[223 len 1]
    if stor6 / 100:
        require stor6 / 100
        require uint8(stor3.field_160) * stor6 / 100 / stor6 / 100 == uint8(stor3.field_160)
    require uint8(stor3.field_160) * stor6 / 100 <= stor6
    stor7 = stor6 - (uint8(stor3.field_160) * stor6 / 100)
    emit NewTokenPrice((stor6 - (uint8(stor3.field_160) * stor6 / 100)));
    return code.data[1245 len 6350]
}



// =====================  Runtime code  =====================


const sub_1b5a92b7(?) = 3 * 10^6

const sub_61d15a6a(?) = 70 * 10^6

const sub_e3a1b5b5(?) = 2 * 10^6

const sub_efc36267(?) = 25 * 10^6


address beneficiaryAddress;
address sub_e477e14fAddress;
uint256 sub_f016c756;
uint8 sub_4b79401e; offset 160
address tokenAddress;
uint256 collectedWei;
uint256 stor5;
uint256 sub_a3c622f8;
uint256 sub_f90e053f;
uint256 sub_51e29425;
mapping of uint256 stor9;
uint8 currentState;

function currentState() {
    require currentState <= 3
    return currentState
}

function beneficiary() {
    return beneficiaryAddress
}

function sub_4b79401e(?) {
    return sub_4b79401e
}

function sub_51e29425(?) {
    return sub_51e29425
}

function sub_a3c622f8(?) {
    return sub_a3c622f8
}

function sub_e477e14f(?) {
    return sub_e477e14fAddress
}

function sub_f016c756(?) {
    return sub_f016c756
}

function collectedWei() {
    return collectedWei
}

function sub_f90e053f(?) {
    return sub_f90e053f
}

function token() {
    return tokenAddress
}

function pauseICO() {
    require beneficiaryAddress == msg.sender
    require currentState <= 3
    require 1 == currentState
    currentState = 2
    emit LogStateSwitch(2);
}

function resumeICO() {
    require beneficiaryAddress == msg.sender
    require currentState <= 3
    require 2 == currentState
    currentState = 1
    emit LogStateSwitch(1);
}

function sub_e1128cab(?) {
    require beneficiaryAddress == msg.sender
    call beneficiaryAddress with:
       value stor5 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function finishICO() {
    require beneficiaryAddress == msg.sender
    require currentState <= 3
    require 1 == currentState
    currentState = 3
    emit LogStateSwitch(3);
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function startICO() {
    require beneficiaryAddress == msg.sender
    require currentState <= 3
    require 0 == currentState
    currentState = 1
    emit LogStateSwitch(1);
    sub_51e29425 = 70 * 10^6
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress, 30 * 10^6
    require ext_call.success
}

function setDiscount(uint8 arg1) {
    require beneficiaryAddress == msg.sender
    sub_4b79401e = arg1
    emit 0xb0bbb531: arg1
    if sub_a3c622f8 / 100:
        require sub_a3c622f8 / 100
        require sub_4b79401e * sub_a3c622f8 / 100 / sub_a3c622f8 / 100 == sub_4b79401e
    require sub_4b79401e * sub_a3c622f8 / 100 <= sub_a3c622f8
    sub_f90e053f = sub_a3c622f8 - (sub_4b79401e * sub_a3c622f8 / 100)
    emit NewTokenPrice((sub_a3c622f8 - (sub_4b79401e * sub_a3c622f8 / 100)));
}

function sub_a39e0b09(?) {
    require sub_e477e14fAddress == msg.sender
    require currentState <= 3
    require 1 == currentState
    require sub_51e29425 >= arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require arg2 + sub_f016c756 >= sub_f016c756
    sub_f016c756 += arg2
    require arg2 + sub_f016c756 <= 70 * 10^6
    sub_51e29425 = -arg2 + -sub_f016c756 + 70 * 10^6
    emit TokenPurchase(address(arg1), beneficiaryAddress, arg2);
}

function _fallback() payable {
    require currentState <= 3
    require 1 == currentState
    require msg.value
    if msg.value < sub_f90e053f / 1500:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit 0xec0c7a67: msg.sender, msg.value
    else:
        require sub_f90e053f / 1500
        if sub_51e29425 < msg.value / sub_f90e053f / 1500:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit 0xec0c7a67: msg.sender, msg.value
        else:
            require msg.value + collectedWei >= collectedWei
            collectedWei += msg.value
            require msg.value + stor5 >= stor5
            stor5 += msg.value
            require msg.value + stor9[address(msg.sender)] >= stor9[address(msg.sender)]
            stor9[address(msg.sender)] += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value / sub_f90e053f / 1500
            require ext_call.success
            require (msg.value / sub_f90e053f / 1500) + sub_f016c756 >= sub_f016c756
            sub_f016c756 += msg.value / sub_f90e053f / 1500
            require (msg.value / sub_f90e053f / 1500) + sub_f016c756 <= 70 * 10^6
            sub_51e29425 = -(msg.value / sub_f90e053f / 1500) + -sub_f016c756 + 70 * 10^6
            emit TokenPurchase(msg.sender, beneficiaryAddress, msg.value / sub_f90e053f / 1500);
}



}
