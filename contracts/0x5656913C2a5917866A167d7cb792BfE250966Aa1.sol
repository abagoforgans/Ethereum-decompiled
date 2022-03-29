contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0xa74476443119a942de498590fe1f2454d7d4ac0d
    require not msg.value
    return code.data[63 len 1755]
}



// =====================  Runtime code  =====================


const name = Array(len=37, data='BlockSwap Wrapped Golem Network ', 'Token' % 1099511627776)

const symbol = 'BSGNT'


address gntContractAddress;
address owner;

function owner() {
    return owner
}

function gntContractAddress() {
    return gntContractAddress
}

function _fallback() payable {
    revert 
}

function totalSupply() {
    require ext_code.size(gntContractAddress)
    call gntContractAddress.0x18160ddd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function decimals() {
    require ext_code.size(gntContractAddress)
    call gntContractAddress.0x313ce567 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[31 len 1]
}

function balanceOf(address arg1) {
    require ext_code.size(gntContractAddress)
    call gntContractAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(gntContractAddress)
    call gntContractAddress.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function moveToWaves(string arg1, uint256 arg2) {
    mem[128 len arg1.length] = arg1[all]
    require ext_code.size(gntContractAddress)
    call gntContractAddress.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args owner, arg2
    require ext_call.success
    require ext_call.return_data[0]
    mem[ceil32(arg1.length) + 160] = arg2
    mem[ceil32(arg1.length) + 128] = 64
    mem[ceil32(arg1.length) + 192] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 224] = mem[128]
        mem[ceil32(arg1.length) + 256 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    emit WavesTransfer(Array(len=arg1.length, data=mem[ceil32(arg1.length) + 224 len arg1.length]), arg2, msg.sender);
}



}
