contract main {


// =======================  Init code  ======================


address stor2;

function _fallback() payable {
    stor2 = 0
    require not msg.value
    return code.data[46 len 1878]
}



// =====================  Runtime code  =====================


const sub_790de429(?) = 1


address storageAddress;
address tokenAddress;
address stor2;

function getToken() {
    return tokenAddress
}

function getStorage() {
    return storageAddress
}

function tokenAddress() {
    return tokenAddress
}

function sub_a7a55a96(?) {
  stop
}

function _fallback() payable {
    revert
}

function setToken(address arg1) {
    emit 0xfe3cb45e: address(arg1), 64, 0, mem[192]
    tokenAddress = arg1
    return arg1
}

function setStorage(address arg1) {
    emit 0x3a8ebf97: address(arg1), 64, 0, mem[192]
    storageAddress = arg1
    return arg1
}

function Mint(address arg1, uint256 arg2) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function sub_070f1d52(?) {
    require ext_code.size(storageAddress)
    call storageAddress.0xb0467deb with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           address(ext_call.return_data[96]),
           bool(ext_call.return_data[128])
}

function sub_f8717c5b(?) {
    require ext_code.size(storageAddress)
    call storageAddress.0x6517579c with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           address(ext_call.return_data[96]),
           bool(ext_call.return_data[128])
}

function sub_397ab6bd(?) {
    require ext_code.size(storageAddress)
    call storageAddress.0xaa9c5426 with:
         gas gas_remaining - 710 wei
        args arg1, arg2
    require ext_call.success
    require ext_code.size(storageAddress)
    call storageAddress.0xb0467deb with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           address(ext_call.return_data[96]),
           bool(ext_call.return_data[128])
}

function sub_c8b37faa(?) {
    require ext_code.size(storageAddress)
    call storageAddress.0x6517579c with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if stor2 != ext_call.return_data[108 len 20]:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(ext_call.return_data[96]), arg2
    else:
        hash = sha256hash(arg1) 
        require sha256hash.result
        require ext_code.size(storageAddress)
        call storageAddress.0xaa9c5426 with:
             gas gas_remaining - 710 wei
            args arg1, address(hash)
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(hash), arg2
    require ext_call.success
}



}
