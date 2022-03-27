contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[1394 len 20]
    return code.data[72 len 1310]
}



// =====================  Runtime code  =====================


address walletAddress;

function wallet() {
    return walletAddress
}

function _fallback() payable {
    revert 
}

function bytesToInt(bytes arg1) {
    mem[128 len arg1.length] = arg1[all]
    require 0 < arg1.length
    require 1 < arg1.length
    require 2 < arg1.length
    require 3 < arg1.length
    mem[ceil32(arg1.length) + 128] = uint32(mem[131 len 1] + (Mask(8, 248, mem[130]) >> 240) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[128]) >> 224))
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + 132] = arg3
    require ext_code.size(walletAddress)
    call walletAddress.0x75151b63 with:
         gas gas_remaining - 50 wei
        args arg3
    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    require 0 < arg4.length
    require 1 < arg4.length
    require 2 < arg4.length
    require 3 < arg4.length
    require ext_code.size(walletAddress)
    call walletAddress.0x78532de0 with:
         gas gas_remaining - 50 wei
        args uint32(mem[131 len 1] + (Mask(8, 248, mem[130]) >> 240) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[128]) >> 224))
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(walletAddress)
    call walletAddress.0x9266512d with:
         gas gas_remaining - 50 wei
        args uint32(mem[131 len 1] + (Mask(8, 248, mem[130]) >> 240) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[128]) >> 224))
    require ext_call.success
    require arg3 == ext_call.return_data[76 len 20]
    require arg2 == ext_call.return_data[32]
    require ext_code.size(arg3)
    call arg3.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 50 wei
        args address(arg1), address(ext_call.return_data[0]), arg2
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(walletAddress)
    call walletAddress.0xae54e290 with:
         gas gas_remaining - 50 wei
        args uint32(mem[131 len 1] + (Mask(8, 248, mem[130]) >> 240) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[128]) >> 224))
    require ext_call.success
    require ext_call.return_data[0]
}



}
