contract main {


// =======================  Init code  ======================


const _fallback = code.data[24 len 15871]




// =====================  Runtime code  =====================


address sysAddress;

function sys() {
    return sysAddress
}

function kill() {
    require sysAddress
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert 
}

function sub_979e3ddb(?) {
    require not sysAddress
    create contract with 0 wei
                    code: code.data[1567 len 3427], address(arg1)
    require create.new_address
    sysAddress = address(create.new_address)
    create contract with 0 wei
                    code: code.data[4994 len 3337], address(arg2)
    create contract with 0 wei
                    code: code.data[8331 len 1973]
    create contract with 0 wei
                    code: code.data[10304 len 2937]
    create contract with 0 wei
                    code: code.data[13241 len 2630]
    require ext_code.size(sysAddress)
    call sysAddress.set(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 50 wei
        args 'mkr_supplier', address(create.new_address)
    require ext_call.success
    require ext_code.size(sysAddress)
    call sysAddress.set(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 50 wei
        args 'whitelist', address(create.new_address)
    require ext_call.success
    require ext_code.size(sysAddress)
    call sysAddress.set(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 50 wei
        args 'prices', address(create.new_address)
    require ext_call.success
    require ext_code.size(sysAddress)
    call sysAddress.set(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 50 wei
        args 'multivault', address(create.new_address)
    require ext_call.success
}



}
