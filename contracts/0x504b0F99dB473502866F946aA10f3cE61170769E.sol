contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 5914]




// =====================  Runtime code  =====================


address multiAssetAddress;
uint256 symbol;
array of uint256 name;

function multiAsset() {
    return multiAssetAddress
}

function name() {
    return uint256(name[0 len name.length])
}

function symbol() {
    return symbol
}

function _fallback() payable {
    revert
}

function emitApprove(address arg1, address arg2, uint256 arg3) {
    if multiAssetAddress == msg.sender:
        emit Approve(arg3, arg1, arg2);
}

function emitTransfer(address arg1, address arg2, uint256 arg3) {
    if multiAssetAddress == msg.sender:
        emit Transfer(arg3, arg1, arg2);
}

function setName(string arg1) {
    if Mask(255, 1, name.length and (256 * not bool(name.length)) - 1):
        return 0
    uint256(name[]) = Array(len=arg1.length, data=arg1[all])
    return 1
}

function totalSupply() {
    require ext_code.size(multiAssetAddress)
    call multiAssetAddress.totalSupply(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args symbol
    require ext_call.success
    return ext_call.return_data[0]
}

function decimals() {
    require ext_code.size(multiAssetAddress)
    call multiAssetAddress.baseUnit(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args symbol
    require ext_call.success
    return ext_call.return_data[31 len 1]
}

function balanceOf(address arg1) {
    require ext_code.size(multiAssetAddress)
    call multiAssetAddress.balanceOf(address rg1, bytes32 rg2) with:
         gas gas_remaining - 50 wei
        args address(arg1), symbol
    require ext_call.success
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) {
    require ext_code.size(multiAssetAddress)
    call multiAssetAddress.allowance(address rg1, address rg2, bytes32 rg3) with:
         gas gas_remaining - 50 wei
        args address(arg1), address(arg2), symbol
    require ext_call.success
    return ext_call.return_data[0]
}

function init(address arg1, bytes32 arg2) {
    if multiAssetAddress:
        return 0
    require ext_code.size(arg1)
    call arg1.isCreated(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args arg2
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    multiAssetAddress = arg1
    symbol = arg2
    return 1
}

function setCosignerAddress(address arg1) {
    if tx.origin != msg.sender:
        return 0
    require ext_code.size(multiAssetAddress)
    call multiAssetAddress.proxySetCosignerAddress(address rg1, bytes32 rg2) with:
         gas gas_remaining - 50 wei
        args address(arg1), symbol
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function approve(address arg1, uint256 arg2) {
    if tx.origin != msg.sender:
        return 0
    require ext_code.size(multiAssetAddress)
    call multiAssetAddress.proxyApprove(address rg1, uint256 rg2, bytes32 rg3) with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2, symbol
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFromToICAP(address arg1, bytes32 arg2, uint256 arg3) {
    if tx.origin != msg.sender:
        return 0
    require ext_code.size(multiAssetAddress)
    call multiAssetAddress.proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
         gas gas_remaining - 50 wei
        args 0, 0, arg2, arg3, 128, 0
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if tx.origin != msg.sender:
        return 0
    require ext_code.size(multiAssetAddress)
    call multiAssetAddress.proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
         gas gas_remaining - 50 wei
        args 0, 0, 0, arg3, symbol, 160, 0
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferToICAP(bytes32 arg1, uint256 arg2) {
    if msg.sender == tx.origin:
        if ext_code.size(multiAssetAddress):
            call multiAssetAddress.proxyTransferToICAPWithReference(bytes32 rg1, uint256 rg2, string rg3) with:
                 gas gas_remaining - 50 wei
                args arg1, arg2, 96, 0
            if ext_call.success:
                return bool(ext_call.return_data[0])
    else:
        if ext_code.size(multiAssetAddress):
            call multiAssetAddress.0xa48a663c with:
                 gas gas_remaining - 50 wei
                args 0, uint32(msg.sender), arg1, arg2, 128, 0
            if ext_call.success:
                return bool(ext_call.return_data[0])
    revert
}

function transfer(address arg1, uint256 arg2) {
    if msg.sender == tx.origin:
        if ext_code.size(multiAssetAddress):
            call multiAssetAddress.proxyTransferWithReference(address rg1, uint256 rg2, bytes32 rg3, string rg4) with:
                 gas gas_remaining - 50 wei
                args 0, 0, arg2, symbol, 128, 0
            if ext_call.success:
                return bool(ext_call.return_data[0])
    else:
        if ext_code.size(multiAssetAddress):
            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 50 wei
                args 0, 0, 0, arg2, symbol, 160, 0
            if ext_call.success:
                return bool(ext_call.return_data[0])
    revert
}

function sendToOwner() {
    require ext_code.size(multiAssetAddress)
    call multiAssetAddress.owner(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args symbol
    require ext_call.success
    if eth.balance(this.address) <= 0:
        require ext_code.size(multiAssetAddress)
        call multiAssetAddress.balanceOf(address rg1, bytes32 rg2) with:
             gas gas_remaining - 50 wei
            args address(ext_call.return_data[0]), symbol
        require ext_call.success
        require ext_code.size(multiAssetAddress)
        call multiAssetAddress.transfer(address rg1, uint256 rg2, bytes32 rg3) with:
             gas gas_remaining - 50 wei
            args address(ext_call.return_data[0]), ext_call.return_data[0], symbol
        require ext_call.success
        if not ext_call.return_data[0]:
            return bool(ext_call.return_data[0])
        return 1
    call ext_call.return_data[12 len 20] with:
       value eth.balance(this.address) wei
         gas gas_remaining - 34050 wei
    require ext_code.size(multiAssetAddress)
    call multiAssetAddress.balanceOf(address rg1, bytes32 rg2) with:
         gas gas_remaining - 50 wei
        args address(ext_call.return_data[0]), symbol
    require ext_call.success
    require ext_code.size(multiAssetAddress)
    call multiAssetAddress.transfer(address rg1, uint256 rg2, bytes32 rg3) with:
         gas gas_remaining - 50 wei
        args address(ext_call.return_data[0]), ext_call.return_data[0], symbol
    require ext_call.success
    if not ext_call.return_data[0]:
        return bool(ext_call.return_data[0])
    return bool(ext_call.success)
}

function transferFromToICAPWithReference(address arg1, bytes32 arg2, uint256 arg3, string arg4) {
    mem[128 len arg4.length] = arg4[all]
    if tx.origin != msg.sender:
        return 0
    mem[ceil32(arg4.length) + 128] = 0xea98e54000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + 132] = arg1
    mem[ceil32(arg4.length) + 164] = arg2
    mem[ceil32(arg4.length) + 196] = arg3
    mem[ceil32(arg4.length) + 228] = 128
    mem[ceil32(arg4.length) + 260] = arg4.length
    if not arg4.length:
        if not arg4.length % 32:
            if ext_code.size(multiAssetAddress):
                call multiAssetAddress.proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
                     gas gas_remaining - 50 wei
                    args 0, 0, arg2, arg3, 128, arg4.length, mem[ceil32(arg4.length) + 292 len arg4.length]
                if ext_call.success:
                    return bool(ext_call.return_data[0])
        else:
            mem[floor32(arg4.length) + ceil32(arg4.length) + 292] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 324 len arg4.length % 32]
            if ext_code.size(multiAssetAddress):
                call multiAssetAddress.proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
                     gas gas_remaining - 50 wei
                    args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 292 len floor32(arg4.length) + 32])
                if ext_call.success:
                    return bool(ext_call.return_data[0])
    else:
        mem[ceil32(arg4.length) + 292] = mem[128]
        mem[ceil32(arg4.length) + 324 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
        if ext_code.size(multiAssetAddress):
            call multiAssetAddress.proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
                 gas gas_remaining - 50 wei
                args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 292 len arg4.length])
            if ext_call.success:
                return bool(ext_call.return_data[0])
    revert
}

function transferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4) {
    mem[128 len arg4.length] = arg4[all]
    if tx.origin != msg.sender:
        return 0
    mem[ceil32(arg4.length) + 128] = 0xf0cbe05900000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + 132] = arg1
    mem[ceil32(arg4.length) + 164] = arg2
    mem[ceil32(arg4.length) + 196] = arg3
    mem[ceil32(arg4.length) + 228] = symbol
    mem[ceil32(arg4.length) + 260] = 160
    mem[ceil32(arg4.length) + 292] = arg4.length
    if not arg4.length:
        if not arg4.length % 32:
            if ext_code.size(multiAssetAddress):
                call multiAssetAddress.proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args 0, 0, 0, arg3, symbol, 160, arg4.length, mem[ceil32(arg4.length) + 324 len arg4.length]
                if ext_call.success:
                    return bool(ext_call.return_data[0])
        else:
            mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
            if ext_code.size(multiAssetAddress):
                call multiAssetAddress.proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args address(arg1), address(arg2), arg3, symbol, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len floor32(arg4.length) + 32])
                if ext_call.success:
                    return bool(ext_call.return_data[0])
    else:
        mem[ceil32(arg4.length) + 324] = mem[128]
        mem[ceil32(arg4.length) + 356 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
        if ext_code.size(multiAssetAddress):
            call multiAssetAddress.proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 50 wei
                args address(arg1), address(arg2), arg3, symbol, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len arg4.length])
            if ext_call.success:
                return bool(ext_call.return_data[0])
    revert
}

function transferToICAPWithReference(bytes32 arg1, uint256 arg2, string arg3) {
    mem[128 len arg3.length] = arg3[all]
    if msg.sender == tx.origin:
        mem[ceil32(arg3.length) + 128] = 0xc548766100000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + 132] = arg1
        mem[ceil32(arg3.length) + 164] = arg2
        mem[ceil32(arg3.length) + 196] = 96
        mem[ceil32(arg3.length) + 228] = arg3.length
        if arg3.length:
            mem[ceil32(arg3.length) + 260] = mem[128]
            mem[ceil32(arg3.length) + 292 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        if ext_code.size(multiAssetAddress):
            call multiAssetAddress.proxyTransferToICAPWithReference(bytes32 rg1, uint256 rg2, string rg3) with:
                 gas gas_remaining - 50 wei
                args arg1, arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 260 len arg3.length])
            if ext_call.success:
                return bool(ext_call.return_data[0])
    else:
        mem[ceil32(arg3.length) + 128] = 0xa48a663c00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + 132] = msg.sender
        mem[ceil32(arg3.length) + 164] = arg1
        mem[ceil32(arg3.length) + 196] = arg2
        mem[ceil32(arg3.length) + 228] = 128
        mem[ceil32(arg3.length) + 260] = arg3.length
        if not arg3.length:
            if not arg3.length % 32:
                if ext_code.size(multiAssetAddress):
                    call multiAssetAddress.0xa48a663c with:
                         gas gas_remaining - 50 wei
                        args 0, uint32(msg.sender), arg1, arg2, 128, arg3.length, mem[ceil32(arg3.length) + 292 len arg3.length]
                    if ext_call.success:
                        return bool(ext_call.return_data[0])
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
                if ext_code.size(multiAssetAddress):
                    call multiAssetAddress.0xa48a663c with:
                         gas gas_remaining - 50 wei
                        args msg.sender, arg1, arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len floor32(arg3.length) + 32])
                    if ext_call.success:
                        return bool(ext_call.return_data[0])
        else:
            mem[ceil32(arg3.length) + 292] = mem[128]
            mem[ceil32(arg3.length) + 324 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
            if ext_code.size(multiAssetAddress):
                call multiAssetAddress.0xa48a663c with:
                     gas gas_remaining - 50 wei
                    args msg.sender, arg1, arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len arg3.length])
                if ext_call.success:
                    return bool(ext_call.return_data[0])
    revert
}

function transferWithReference(address arg1, uint256 arg2, string arg3) {
    mem[128 len arg3.length] = arg3[all]
    if msg.sender == tx.origin:
        mem[ceil32(arg3.length) + 128] = 0x64ef212e00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + 132] = arg1
        mem[ceil32(arg3.length) + 164] = arg2
        mem[ceil32(arg3.length) + 196] = symbol
        mem[ceil32(arg3.length) + 228] = 128
        mem[ceil32(arg3.length) + 260] = arg3.length
        if not arg3.length:
            if not arg3.length % 32:
                if ext_code.size(multiAssetAddress):
                    call multiAssetAddress.proxyTransferWithReference(address rg1, uint256 rg2, bytes32 rg3, string rg4) with:
                         gas gas_remaining - 50 wei
                        args 0, 0, arg2, symbol, 128, arg3.length, mem[ceil32(arg3.length) + 292 len arg3.length]
                    if ext_call.success:
                        return bool(ext_call.return_data[0])
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
                if ext_code.size(multiAssetAddress):
                    call multiAssetAddress.proxyTransferWithReference(address rg1, uint256 rg2, bytes32 rg3, string rg4) with:
                         gas gas_remaining - 50 wei
                        args address(arg1), arg2, symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len floor32(arg3.length) + 32])
                    if ext_call.success:
                        return bool(ext_call.return_data[0])
        else:
            mem[ceil32(arg3.length) + 292] = mem[128]
            mem[ceil32(arg3.length) + 324 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
            if ext_code.size(multiAssetAddress):
                call multiAssetAddress.proxyTransferWithReference(address rg1, uint256 rg2, bytes32 rg3, string rg4) with:
                     gas gas_remaining - 50 wei
                    args address(arg1), arg2, symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len arg3.length])
                if ext_call.success:
                    return bool(ext_call.return_data[0])
    else:
        mem[ceil32(arg3.length) + 128] = 0x31c6c4cf00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + 132] = msg.sender
        mem[ceil32(arg3.length) + 164] = arg1
        mem[ceil32(arg3.length) + 196] = arg2
        mem[ceil32(arg3.length) + 228] = symbol
        mem[ceil32(arg3.length) + 260] = 160
        mem[ceil32(arg3.length) + 292] = arg3.length
        if not arg3.length:
            if not arg3.length % 32:
                if ext_code.size(multiAssetAddress):
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args 0, 0, 0, arg2, symbol, 160, arg3.length, mem[ceil32(arg3.length) + 324 len arg3.length]
                    if ext_call.success:
                        return bool(ext_call.return_data[0])
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + 324] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 356 len arg3.length % 32]
                if ext_code.size(multiAssetAddress):
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args msg.sender, address(arg1), arg2, symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len floor32(arg3.length) + 32])
                    if ext_call.success:
                        return bool(ext_call.return_data[0])
        else:
            mem[ceil32(arg3.length) + 324] = mem[128]
            mem[ceil32(arg3.length) + 356 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
            if ext_code.size(multiAssetAddress):
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args msg.sender, address(arg1), arg2, symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len arg3.length])
                if ext_call.success:
                    return bool(ext_call.return_data[0])
    revert
}



}
