contract main {


// =======================  Init code  ======================


uint8 stor0;

function _fallback() payable {
    stor0 = 0
    require not msg.value
    return code.data[56 len 1104]
}



// =====================  Runtime code  =====================


const name = 'Test'

const symbol = 'Test'


uint8 stor0;

function sent() {
    return bool(stor0)
}

function _fallback() payable {
    revert
}

function fundtransfer() {
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_1dfa1b01(?) payable {
    require not stor0
    call 0x8c6778f77b22cead996a7bd73de2283e38d5aa4a with:
       value 16663609459969600 wei
         gas 0 wei
    require ext_call.success
    call 0x37ce10b37a199fc7a771765ba378b4a26bb2432f with:
       value 17443409985915500 wei
         gas 0 wei
    call 0xcbb46267b2a0d671db713e28c4e6bb271e2fa5a7 with:
       value 18393409985915600 wei
         gas 0 wei
    stor0 = 1
    return 1
}



}
