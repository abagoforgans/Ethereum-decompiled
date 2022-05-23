contract main {




// =====================  Runtime code  =====================


const getETHBalance = eth.balance(this.address)

const walletVersion = 'v1.0.0'


address FSTAddress;
address owner;
uint256 stor1;
uint256 secretHash;
uint256 sn;

function FST() {
    return FSTAddress
}

function owner() {
    return address(owner)
}

function secretHash() {
    return secretHash
}

function sn() {
    return sn
}

function _fallback() payable {
  stop
}

function setFST(address arg1) {
    require msg.sender == address(owner)
    require arg1 != this.address
    require arg1
    FSTAddress = arg1
    return 1
}

function transferETH(address arg1, uint256 arg2) {
    require msg.sender == address(owner)
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferMoreETH(address arg1, uint256 arg2) payable {
    require msg.sender == address(owner)
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function getERCBalance(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getFSTBalance() {
    require ext_code.size(FSTAddress)
    call FSTAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferFST(address arg1, uint256 arg2) {
    require msg.sender == address(owner)
    require ext_code.size(FSTAddress)
    call FSTAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transferERC(address arg1, address arg2, uint256 arg3) {
    require msg.sender == address(owner)
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function approveFST(address arg1, uint256 arg2) {
    require msg.sender == address(owner)
    require ext_code.size(FSTAddress)
    call FSTAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function approveERC(address arg1, address arg2, uint256 arg3) {
    require msg.sender == address(owner)
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transferFromFST(address arg1, address arg2, uint256 arg3) {
    require msg.sender == address(owner)
    require ext_code.size(FSTAddress)
    call FSTAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transferFromERC(address arg1, address arg2, address arg3, uint256 arg4) {
    require msg.sender == address(owner)
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transferAndCallFST(address arg1, uint256 arg2, bytes arg3) payable {
    require msg.sender == address(owner)
    require ext_code.size(FSTAddress)
    call FSTAddress.transferAndCall(address arg1, uint256 arg2, bytes arg3) with:
       value msg.value wei
         gas gas_remaining wei
        args address(arg1), arg2, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1
}

function transferAndCallERC(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require msg.sender == address(owner)
    require ext_code.size(arg1)
    call arg1.transferAndCall(address arg1, uint256 arg2, bytes arg3) with:
       value msg.value wei
         gas gas_remaining wei
        args address(arg2), arg3, Array(len=arg4.length, data=arg4[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1
}

function callContract(address arg1, bytes arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    require msg.sender == address(owner)
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        call arg1.mem[ceil32(arg2.length) + 128 len 4] with:
           value msg.value wei
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        call arg1.mem[ceil32(arg2.length) + 128 len 4] with:
           value msg.value wei
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
    require ext_call.success
    return 1
}

function recoverAndSetSecretHash(string arg1, bytes32 arg2) {
    mem[128 len arg1.length] = arg1[all]
    require arg2
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 192 len arg1.length % 32] = mem[ceil32(arg1.length) + -(arg1.length % 32) + floor32(arg1.length) + 192 len arg1.length % 32]
    require sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]) == secretHash
    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
    secretHash = arg2
    return 1
}



}
