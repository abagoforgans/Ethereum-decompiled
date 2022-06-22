contract main {




// =====================  Runtime code  =====================


mapping of uint256 wards;
address cacheAddress;

function cache() {
    return cacheAddress
}

function wards(address arg1) {
    require calldata.size - 4 >= 32
    return wards[arg1]
}

function _fallback() payable {
  stop
}

function rely(address arg1) {
    require calldata.size - 4 >= 32
    require 1 == wards[msg.sender]
    wards[address(arg1)] = 1
}

function deny(address arg1) {
    require calldata.size - 4 >= 32
    require 1 == wards[msg.sender]
    wards[address(arg1)] = 0
}

function setCache(address arg1) {
    require calldata.size - 4 >= 32
    require 1 == wards[msg.sender]
    if not arg1:
        revert with 0, 'ds-proxy-cache-address-required'
    cacheAddress = arg1
    return 1
}

function execute(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require 1 == wards[msg.sender]
    delegate arg1 with:
         gas gas_remaining - 5000 wei
        args arg2[all]
    require not delegate.return_code != 1
}

function execute(bytes arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = 32
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 228 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    require ext_code.size(cacheAddress)
    staticcall cacheAddress with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[0]):
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = 32
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = arg1.length
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 228 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        require ext_code.size(cacheAddress)
        call cacheAddress with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=arg1[all])
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require 1 == wards[msg.sender]
    delegate ext_call.return_data[0].mem[ceil32(arg1.length) + 160 len 4] with:
         gas gas_remaining - 5000 wei
        args mem[ceil32(arg1.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
    require not delegate.return_code != 1
}



}
