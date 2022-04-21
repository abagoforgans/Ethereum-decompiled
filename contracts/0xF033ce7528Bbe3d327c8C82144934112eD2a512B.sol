contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 817]




// =====================  Runtime code  =====================


const extensions = 0xf46002c37af6fb078ae1833fd447698a0c9012f7

const bancorToken = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c

const etherToken = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315


function _fallback() payable {
    require ext_code.size(0xf46002c37af6fb078ae1833fd447698a0c9012f7)
    call 0xf46002c37af6fb078ae1833fd447698a0c9012f7.quickConverter() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    mem[420 len 0] = None
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).convertFor(address[] rg1, uint256 rg2, uint256 rg3, address rg4) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args Array(len=3, data=mem[420 len 96]), msg.value, 1, msg.sender
    require ext_call.success
}



}
