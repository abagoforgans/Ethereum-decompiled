contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
address stor5;
address stor6;

function _fallback() payable {
    stor2 = 0
    stor6 = 0
    require not msg.value
    stor0 = msg.sender
    stor5 = code.data[2481 len 20]
    stor0 = code.data[2513 len 20]
    stor6 = code.data[2545 len 20]
    return code.data[171 len 2298]
}



// =====================  Runtime code  =====================


address owner;
address fromAddress;
uint256 balance;
address tokenContractAddress;
array of uint256 sub_609d3334;
address sub_e827a9e9Address;
address sub_7a02cb3fAddress;

function tokenContract() {
    return tokenContractAddress
}

function sub_609d3334(?) {
    return sub_609d3334[0 len sub_609d3334.length]
}

function sub_7a02cb3f(?) {
    require owner == msg.sender
    return sub_7a02cb3fAddress
}

function owner() {
    return owner
}

function balance() {
    return balance
}

function from() {
    return fromAddress
}

function sub_e827a9e9(?) {
    return sub_e827a9e9Address
}

function sub_3594d2cb(?) {
    require owner == msg.sender
    sub_7a02cb3fAddress = arg1
    return 1
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    mem[128 len arg4.length] = arg4[all]
    fromAddress = arg1
    if not arg2:
        balance = 0
    else:
        require arg2 + balance >= balance
        require arg2 + balance >= arg2
        balance += arg2
    tokenContractAddress = arg3
    sub_609d3334.length = (2 * arg4.length) + 1
    s = 0x8a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd19b
    idx = 128
    while arg4.length + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, arg4.length + 31) >> 5) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65
    while (sub_609d3334.length + 31 / 32) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    emit ReceivedApproval(arg2);
}

function _fallback() payable {
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x1de7463a with:
         gas gas_remaining - 50 wei
        args block.timestamp
    require ext_call.success
    require balance >= msg.value * ext_call.return_data[0]
    call sub_e827a9e9Address with:
       value msg.value - (2941 * msg.value / 25000) wei
         gas gas_remaining - 34050 wei
    require ext_call.success
    call sub_7a02cb3fAddress with:
       value 2941 * msg.value / 25000 wei
         gas gas_remaining - 34050 wei
    call tokenContractAddress with:
       funct Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224
         gas gas_remaining - 25050 wei
        args sub_e827a9e9Address, msg.sender, msg.value * ext_call.return_data[0], this.address
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xdd62ed3e with:
         gas gas_remaining - 50 wei
        args sub_e827a9e9Address, this.address
    require ext_call.success
    balance = ext_call.return_data[0]
    emit 0x4dd8d32b: msg.value / 10^18, msg.value * ext_call.return_data[0] / 10^18, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender
}



}
