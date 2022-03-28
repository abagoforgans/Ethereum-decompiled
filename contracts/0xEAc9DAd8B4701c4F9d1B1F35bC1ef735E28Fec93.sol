contract main {


// =======================  Init code  ======================


address stor1;
uint256 stor6;
array of uint256 stor8;
array of uint256 stor9;

function _fallback() {
    stor1 = msg.sender
    bool(stor8.length) = 0
    stor8.length.field_1 = 19
    stor8.length.field_8 = 'Created New Invoice' / 256
    idx = 0
    while stor8.length + 31 / 32 > idx:
        stor8[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 1
    if 31 >= stor8.length:
        stor9.length = stor8.length
        idx = 0
        while stor9.length + 31 / 32 > idx:
            stor9[idx] = 0
            idx = idx + 1
            continue 
    else:
        stor9.length = Mask(255, 1, (256 * not bool(stor8.length)) - 1 and stor8.length) + 1
        if not Mask(255, 1, (256 * not bool(stor8.length)) - 1 and stor8.length):
            idx = 0
            while stor9.length + 31 / 32 > idx:
                stor9[idx] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor8.length + 31 / 32 > idx:
                stor9[s] = stor8[idx].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor8.length + 31 / 32
            while stor9.length + 31 / 32 > idx:
                stor9[idx] = 0
                idx = idx + 1
                continue 
    return code.data[544 len 3137]
}



// =====================  Runtime code  =====================


mapping of uint256 payments;
address payeeAddress;
address account;
array of uint256 sub_c5e57985;
uint256 invoiceAmount;
array of uint256 description;
uint256 sub_1e8b9d11;
uint8 stor7;
array of uint256 sub_1d5f2493;
array of uint256 message;

function sub_1d5f2493(?) {
    return sub_1d5f2493[0 len sub_1d5f2493.length].field_0
}

function sub_1e8b9d11(?) {
    return sub_1e8b9d11
}

function account() {
    return account
}

function sub_5dee3e9b(?) {
    return bool(stor7)
}

function description() {
    return description[0 len description.length]
}

function invoiceAmount() {
    return invoiceAmount
}

function payee() {
    return payeeAddress
}

function sub_c5e57985(?) {
    return sub_c5e57985[0 len sub_c5e57985.length]
}

function message() {
    return message[0 len message.length]
}

function payments(address arg1) {
    return payments[arg1]
}

function _fallback() payable {
    revert
}

function withdrawPayments() {
    require payments[address(msg.sender)]
    require eth.balance(this.address) >= payments[address(msg.sender)]
    payments[address(msg.sender)] = 0
    call msg.sender with:
       value payments[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_91d115ac(?) {
    bool(sub_1d5f2493.length) = 0
    sub_1d5f2493.length.field_1 = 12
    sub_1d5f2493.length.field_8 = 'Invoice Paid' / 256
    idx = 0
    while sub_1d5f2493.length + 31 / 32 > idx:
        sub_1d5f2493[idx].field_0 = 0
        idx = idx + 1
        continue 
    sub_1e8b9d11 = 3
    require msg.sender == payeeAddress
    emit 0xfe5fd877: arg1
    return 1
}

function sub_a653adde(?) {
    bool(sub_1d5f2493.length) = 0
    sub_1d5f2493.length.field_1 = 19
    sub_1d5f2493.length.field_8 = 'Invoice details set' / 256
    idx = 0
    while sub_1d5f2493.length + 31 / 32 > idx:
        sub_1d5f2493[idx].field_0 = 0
        idx = idx + 1
        continue 
    sub_1e8b9d11 = 2
    sub_c5e57985[] = Array(len=arg1.length, data=arg1[all])
    invoiceAmount = arg2
    description[] = Array(len=arg3.length, data=arg3[all])
}



}
