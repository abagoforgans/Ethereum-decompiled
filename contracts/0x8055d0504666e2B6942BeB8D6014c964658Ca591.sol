contract main {


// =======================  Init code  ======================


address stor1;
address stor2;

function _fallback() {
    stor2 = msg.sender
    stor1 = msg.sender
    return code.data[163 len 3392]
}



// =====================  Runtime code  =====================


array of struct uSD;
address senderAddress;
address creatorAddress;

function creator() {
    return creatorAddress
}

function USD(uint256 arg1) {
    return uSD[arg1].field_512
}

function GBP(uint256 arg1) {
    return uSD[arg1].field_1024
}

function sender() {
    return senderAddress
}

function ETH(uint256 arg1) {
    return uSD[arg1].field_256
}

function updatedAt(uint256 arg1) {
    return uSD[arg1].field_1280
}

function EUR(uint256 arg1) {
    return uSD[arg1].field_768
}

function _fallback() payable {
  stop
}

function changeSender(address arg1) {
    require msg.sender == creatorAddress
    senderAddress = arg1
}

function changeCreator(address arg1) {
    require msg.sender == creatorAddress
    creatorAddress = arg1
}

function donate() payable {
    require msg.value >= 0
    call senderAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Donation(msg.sender);
}

function execute(address arg1, uint256 arg2, bytes arg3) {
    require msg.sender == creatorAddress
    call arg1 with:
       value arg2 wei
         gas gas_remaining - 34710 wei
        args arg3[all]
    require ext_call.success
    return 0
}

function requestUpdate(uint256 arg1) payable {
    require msg.value >= 35 * uint256(uSD.field_512)
    call senderAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit RequestUpdate(arg1);
}

function update(uint256 arg1, string arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require msg.sender == senderAddress
    uSD[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
    uSD[arg1].field_256 = arg3
    uSD[arg1].field_512 = arg4
    uSD[arg1].field_768 = arg5
    uSD[arg1].field_1024 = arg6
    uSD[arg1].field_1280 = block.number
    emit NewPrice(arg1, Array(len=arg2.length, data=arg2[all]));
}

function deleteToken(uint256 arg1) {
    require msg.sender == creatorAddress
    emit DeletePrice(arg1);
    uSD[arg1].field_0 = 0
    if 31 < uSD[arg1].length:
        idx = 0
        while uSD[arg1].length + 31 / 32 > idx:
            uSD[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
    uSD[arg1].field_256 = 0
    uSD[arg1].field_512 = 0
    uSD[arg1].field_768 = 0
    uSD[arg1].field_1024 = 0
    uSD[arg1].field_1280 = 0
}

function tokens(uint256 arg1) {
    mem[320] = uSD[arg1].field_0
    idx = 320
    s = 0
    while uSD[arg1].length + 320 > idx + 32:
        mem[idx + 32] = uSD[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=uSD[arg1].length, data=mem[320 len uSD[arg1].length + (floor32(uSD[arg1].length - 1) + -uSD[arg1].length + 32 % 32)]), 
           uSD[arg1].field_256,
           uSD[arg1].field_512,
           uSD[arg1].field_768,
           uSD[arg1].field_1024,
           uSD[arg1].field_1280
}



}
