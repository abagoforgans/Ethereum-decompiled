contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;

function _fallback() payable {
    stor2 = 0xa8e19a7b59881fcc24f7eb078a8e730ef446b05a404d078341862359ba05ade6
    require not msg.value
    stor0 = msg.sender
    return code.data[95 len 685]
}



// =====================  Runtime code  =====================


address owner;
address slavenAdressAddress;
uint256 stor2;

function owner() {
    return owner
}

function slavenAdress() {
    return slavenAdressAddress
}

function deposit() payable {
  stop
}

function _fallback() payable {
    revert
}

function changeHash(bytes32 arg1) {
    require owner == msg.sender
    stor2 = arg1
}

function withdraw() {
    require slavenAdressAddress == msg.sender
    require slavenAdressAddress
    call slavenAdressAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function registerAsSlaven(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    require sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) == stor2
    slavenAdressAddress = msg.sender
}



}
