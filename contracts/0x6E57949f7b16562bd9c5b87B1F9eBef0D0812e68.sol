contract main {




// =====================  Runtime code  =====================


array of struct uSD;
address senderAddress;
address creatorAddress;

function creator() {
    return creatorAddress
}

function USD(uint256 arg1) {
    require calldata.size - 4 >= 32
    return uSD[arg1].field_512
}

function sender() {
    return senderAddress
}

function ETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    return uSD[arg1].field_256
}

function sub_72962d8c(?) {
    require calldata.size - 4 >= 32
    return uSD[arg1].field_1024
}

function updatedAt(uint256 arg1) {
    require calldata.size - 4 >= 32
    return uSD[arg1].field_1280
}

function EUR(uint256 arg1) {
    require calldata.size - 4 >= 32
    return uSD[arg1].field_768
}

function _fallback() payable {
  stop
}

function changeSender(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == creatorAddress
    senderAddress = arg1
}

function changeCreator(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == creatorAddress
    creatorAddress = arg1
}

function donate() payable {
    require msg.value >= 0
    call senderAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Donation(msg.sender);
}

function requestUpdate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.value >= 35 * uint256(uSD.field_512)
    call senderAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit RequestUpdate(arg1);
}

function deleteToken(uint256 arg1) {
    require calldata.size - 4 >= 32
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
    require calldata.size - 4 >= 32
    mem[128] = uSD[arg1].field_0
    idx = 128
    s = 0
    while uSD[arg1].length + 96 > idx:
        mem[idx + 32] = uSD[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=uSD[arg1].length, data=mem[128 len uSD[arg1].length]), 
           uSD[arg1].field_256,
           uSD[arg1].field_512,
           uSD[arg1].field_768,
           uSD[arg1].field_1024,
           uSD[arg1].field_1280
}

function update(uint256 arg1, string arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == senderAddress
    uSD[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
    uSD[arg1].field_256 = arg3
    uSD[arg1].field_512 = arg4
    uSD[arg1].field_768 = arg5
    uSD[arg1].field_1024 = arg6
    uSD[arg1].field_1280 = block.timestamp
    mem[ceil32(arg2.length) + 320] = arg1
    mem[ceil32(arg2.length) + 352] = 64
    mem[ceil32(arg2.length) + 384] = arg2.length
    emit NewPrice(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 352 len (2 * ceil32(arg2.length)) + -arg2.length + 64]);
}



}
