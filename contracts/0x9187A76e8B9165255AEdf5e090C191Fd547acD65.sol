contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = msg.sender
    require not msg.value
    require code.data[3487 len 20]
    stor1 = code.data[3487 len 20]
    return code.data[123 len 3352]
}



// =====================  Runtime code  =====================


address owner;
uint8 smartContractStatus; offset 160
address sub_5fcb246dAddress;

function smartContractStatus() {
    return smartContractStatus
}

function sub_5fcb246d(?) {
    return sub_5fcb246dAddress
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function setSmartContractStatus(uint8 arg1) {
    require owner == msg.sender
    smartContractStatus = arg1
    emit onSmartContractStatusSet(arg1);
}

function sub_4a50bf5c(?) {
    require ext_code.size(sub_5fcb246dAddress)
    call sub_5fcb246dAddress.getUIntValue(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args sha3('user/ids', msg.sender)
    require ext_call.success
    return ext_call.return_data[0]
}

function getConfig(bytes32 arg1) {
    require ext_code.size(sub_5fcb246dAddress)
    call sub_5fcb246dAddress.getUIntValue(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args sha3('config/', arg1)
    require ext_call.success
    return ext_call.return_data[0]
}

function setUserNotifications(bool[] arg1, uint8[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require not smartContractStatus
    require ext_code.size(sub_5fcb246dAddress)
    call sub_5fcb246dAddress.getUIntValue(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args sha3('user/ids', msg.sender)
    require ext_call.success
    require ext_code.size(sub_5fcb246dAddress)
    call sub_5fcb246dAddress.getUInt8Value(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args sha3('user/status', ext_call.return_data[0])
    require ext_call.success
    require ext_call.return_data[31 len 1] == 1
    require ext_code.size(sub_5fcb246dAddress)
    call sub_5fcb246dAddress.getUIntValue(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args sha3('user/ids', msg.sender)
    require ext_call.success
    require 0 < arg1.length
    require ext_code.size(sub_5fcb246dAddress)
    call sub_5fcb246dAddress.setBooleanValue(bytes32 rg1, bool rg2) with:
         gas gas_remaining - 50 wei
        args sha3('user.notif/disabled-all?', ext_call.return_data[0]), bool(mem[128])
    require ext_call.success
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 'user.notif/disabled-newsletter?'
    mem[(32 * arg2.length) + (32 * arg1.length) + 191] = ext_call.return_data[0]
    require 1 < arg1.length
    require ext_code.size(sub_5fcb246dAddress)
    call sub_5fcb246dAddress.setBooleanValue(bytes32 rg1, bool rg2) with:
         gas gas_remaining - 50 wei
        args sha3('user.notif/disabled-newsletter?', ext_call.return_data[0]), bool(mem[160])
    require ext_call.success
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 'user.notif/disabled-on-job-invit'
    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = 'ation-added?'
    mem[(32 * arg2.length) + (32 * arg1.length) + 204] = ext_call.return_data[0]
    require 2 < arg1.length
    require ext_code.size(sub_5fcb246dAddress)
    call sub_5fcb246dAddress.setBooleanValue(bytes32 rg1, bool rg2) with:
         gas gas_remaining - 50 wei
        args sha3('user.notif/disabled-on-job-invit', 'ation-added?', ext_call.return_data[0]), bool(mem[192])
    require ext_call.success
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 'user.notif/disabled-on-job-contr'
    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = 'act-added?'
    mem[(32 * arg2.length) + (32 * arg1.length) + 202] = ext_call.return_data[0]
    require 3 < arg1.length
    require ext_code.size(sub_5fcb246dAddress)
    call sub_5fcb246dAddress.setBooleanValue(bytes32 rg1, bool rg2) with:
         gas gas_remaining - 50 wei
        args sha3('user.notif/disabled-on-job-contr', 'act-added?', ext_call.return_data[0]), bool(mem[224])
    require ext_call.success
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 'user.notif/disabled-on-invoice-p'
    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = 'aid?'
    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = ext_call.return_data[0]
    require 4 < arg1.length
    require ext_code.size(sub_5fcb246dAddress)
    call sub_5fcb246dAddress.setBooleanValue(bytes32 rg1, bool rg2) with:
         gas gas_remaining - 50 wei
        args sha3('user.notif/disabled-on-invoice-p', 'aid?', ext_call.return_data[0]), bool(mem[256])
    require ext_call.success
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 'user.notif/disabled-on-job-propo'
    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = 'sal-added?'
    mem[(32 * arg2.length) + (32 * arg1.length) + 202] = ext_call.return_data[0]
    require 5 < arg1.length
    require ext_code.size(sub_5fcb246dAddress)
    call sub_5fcb246dAddress.setBooleanValue(bytes32 rg1, bool rg2) with:
         gas gas_remaining - 50 wei
        args sha3('user.notif/disabled-on-job-propo', 'sal-added?', ext_call.return_data[0]), bool(mem[288])
    require ext_call.success
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 'user.notif/disabled-on-invoice-a'
    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = 'dded?'
    mem[(32 * arg2.length) + (32 * arg1.length) + 197] = ext_call.return_data[0]
    require 6 < arg1.length
    require ext_code.size(sub_5fcb246dAddress)
    call sub_5fcb246dAddress.setBooleanValue(bytes32 rg1, bool rg2) with:
         gas gas_remaining - 50 wei
        args sha3('user.notif/disabled-on-invoice-a', 'dded?', ext_call.return_data[0]), bool(mem[320])
    require ext_call.success
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 'user.notif/disabled-on-job-contr'
    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = 'act-feedback-added?'
    mem[(32 * arg2.length) + (32 * arg1.length) + 211] = ext_call.return_data[0]
    require 7 < arg1.length
    require ext_code.size(sub_5fcb246dAddress)
    call sub_5fcb246dAddress.setBooleanValue(bytes32 rg1, bool rg2) with:
         gas gas_remaining - 50 wei
        args sha3('user.notif/disabled-on-job-contr', 'act-feedback-added?', ext_call.return_data[0]), bool(mem[352])
    require ext_call.success
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 'user.notif/job-recommendations'
    mem[(32 * arg2.length) + (32 * arg1.length) + 190] = ext_call.return_data[0]
    require 0 < arg2.length
    require ext_code.size(sub_5fcb246dAddress)
    call sub_5fcb246dAddress.setUInt8Value(bytes32 rg1, uint8 rg2) with:
         gas gas_remaining - 50 wei
        args sha3('user.notif/job-recommendations', ext_call.return_data[0]), mem[(32 * arg1.length) + 191 len 1]
    require ext_call.success
}



}
