contract main {




// =====================  Runtime code  =====================


#
#  - update(uint256 arg1, uint256 arg2, uint256 arg3)
#
address stor0;
address stor1;
array of uint256 stor2;
address owner;
mapping of uint8 stor6;
mapping of struct request;
uint256 sub_d1a19f18;
uint8 stor9;
address stor9; offset 8

function owner() {
    return owner
}

function whitelist(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function requests(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return request[arg1].field_0, request[arg1].field_256
}

function callbackGas() {
    return sub_d1a19f18
}

function sub_d1a19f18(?) {
    return sub_d1a19f18
}

function useOraclize() {
    return bool(uint8(stor9.field_0))
}

function getRequest(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return request[arg1].field_0, request[arg1].field_256
}

function _fallback() payable {
  stop
}

function setCallbackGas(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, ''
    sub_d1a19f18 = arg1
}

function sub_e723239e(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, ''
    uint8(stor9.field_0) = uint8(arg1)
}

function sub_9b3d0922(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, ''
    require arg1
    address(stor9.field_8) = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, ''
    if not arg1:
        revert with 0, ''
    owner = arg1
}

function removeAddressFromWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, ''
    if not stor6[address(arg1)]:
        return 0
    stor6[address(arg1)] = 0
    emit WhitelistedAddressRemoved(arg1);
    return 1
}

function addAddressToWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, ''
    if stor6[address(arg1)]:
        return 0
    if not arg1:
        return 0
    stor6[address(arg1)] = 1
    emit WhitelistedAddressAdded(arg1);
    return 1
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, ''
    emit Withdraw(address(arg1), arg2);
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function __callback(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if address(stor9.field_8) != msg.sender:
        revert with 0, ''
    require ext_code.size(request[arg1].field_0)
    call request[arg1].field_0.0x873f24e1 with:
         gas gas_remaining wei
        args request[arg1].field_256, sha3(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function removeAddressesFromWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, ''
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if owner != msg.sender:
            revert with 0, ''
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        if not stor6[mem[(32 * idx) + 140 len 20]]:
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        stor6[address(mem[(32 * idx) + 128])] = 0
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        emit WhitelistedAddressRemoved(mem[(32 * arg1.length) + 128]);
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}

function addAddressesToWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, ''
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if owner != msg.sender:
            revert with 0, ''
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        if stor6[mem[(32 * idx) + 140 len 20]]:
            idx = idx + 1
            s = s
            continue 
        if not mem[(32 * idx) + 140 len 20]:
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        stor6[address(mem[(32 * idx) + 128])] = 1
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        emit WhitelistedAddressAdded(mem[(32 * arg1.length) + 128]);
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg2.length) + ceil32(arg3.length) + 160 <= test266151307() and ceil32(arg3.length) + 160 >= 128
    require arg3 + arg3.length + 36 <= calldata.size
    if not stor1:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor2.length) = 0
            stor2.length.field_1 = 11
            stor2.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor2.length + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
            require ext_code.size(stor1)
            call stor1.getAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if stor0 != ext_call.return_data[12 len 20]:
                require ext_code.size(stor1)
                call stor1.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor0 = ext_call.return_data[12 len 20]
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor1 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor2.length) = 0
                stor2.length.field_1 = 12
                stor2.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor1)
                call stor1.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if stor0 != ext_call.return_data[12 len 20]:
                    require ext_code.size(stor1)
                    call stor1.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor0 = ext_call.return_data[12 len 20]
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor1 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 9
                    stor2.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor1)
                    call stor1.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if stor0 != ext_call.return_data[12 len 20]:
                        require ext_code.size(stor1)
                        call stor1.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor0 = ext_call.return_data[12 len 20]
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor1 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor1 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor1 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        require ext_code.size(stor1)
                        call stor1.getAddress() with:
                             gas gas_remaining wei
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if stor0 != Mask(8 * -ceil32(arg3.length) + arg3.length + 20, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]:
                            require ext_code.size(stor1)
                            call stor1.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor0 = ext_call.return_data[12 len 20]
                    else:
                        stor1 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 11
                        stor2.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor1)
                        call stor1.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if stor0 != ext_call.return_data[12 len 20]:
                            require ext_code.size(stor1)
                            call stor1.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor0 = ext_call.return_data[12 len 20]
    else:
        if ext_code.size(stor1):
            require ext_code.size(stor1)
            call stor1.getAddress() with:
                 gas gas_remaining wei
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if stor0 != Mask(8 * -ceil32(arg3.length) + arg3.length + 20, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]:
                require ext_code.size(stor1)
                call stor1.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor0 = ext_call.return_data[12 len 20]
        else:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor2.length) = 0
                stor2.length.field_1 = 11
                stor2.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor1)
                call stor1.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if stor0 != ext_call.return_data[12 len 20]:
                    require ext_code.size(stor1)
                    call stor1.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor0 = ext_call.return_data[12 len 20]
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor1 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 12
                    stor2.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor1)
                    call stor1.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if stor0 != ext_call.return_data[12 len 20]:
                        require ext_code.size(stor1)
                        call stor1.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor0 = ext_call.return_data[12 len 20]
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor1 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 9
                        stor2.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor1)
                        call stor1.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if stor0 != ext_call.return_data[12 len 20]:
                            require ext_code.size(stor1)
                            call stor1.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor0 = ext_call.return_data[12 len 20]
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor1 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor1 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor1 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                            require ext_code.size(stor1)
                            call stor1.getAddress() with:
                                 gas gas_remaining wei
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if stor0 != Mask(8 * -ceil32(arg3.length) + arg3.length + 20, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]:
                                require ext_code.size(stor1)
                                call stor1.getAddress() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                stor0 = ext_call.return_data[12 len 20]
                        else:
                            stor1 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor2.length) = 0
                            stor2.length.field_1 = 11
                            stor2.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor2.length + 31 / 32 > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor1)
                            call stor1.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if stor0 != ext_call.return_data[12 len 20]:
                                require ext_code.size(stor1)
                                call stor1.getAddress() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                stor0 = ext_call.return_data[12 len 20]
    require ext_code.size(stor0)
    staticcall stor0.cbAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, ''
    require 0 < arg3.length
    if 0 == 'L':
        require 1 < arg3.length
        if 0 == 'P':
            require 2 < arg3.length
    emit 0x8bc7b2ee: request[arg1].field_0, arg1
}

function __callback(bytes32 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 128] = 0
    if not stor1:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            mem[ceil32(arg2.length) + 160] = 11
            bool(stor2.length) = 0
            stor2.length.field_1 = 11
            stor2.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor2.length + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
            require ext_code.size(stor1)
            call stor1.getAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if stor0 != ext_call.return_data[12 len 20]:
                require ext_code.size(stor1)
                call stor1.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor0 = ext_call.return_data[12 len 20]
            require ext_code.size(stor0)
            staticcall stor0.cbAddress() with:
                    gas gas_remaining wei
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor1 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                mem[ceil32(arg2.length) + 160] = 12
                bool(stor2.length) = 0
                stor2.length.field_1 = 12
                stor2.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor1)
                call stor1.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if stor0 != ext_call.return_data[12 len 20]:
                    require ext_code.size(stor1)
                    call stor1.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor0 = ext_call.return_data[12 len 20]
                require ext_code.size(stor0)
                staticcall stor0.cbAddress() with:
                        gas gas_remaining wei
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor1 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    mem[ceil32(arg2.length) + 160] = 9
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 9
                    stor2.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor1)
                    call stor1.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if stor0 != ext_call.return_data[12 len 20]:
                        require ext_code.size(stor1)
                        call stor1.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor0 = ext_call.return_data[12 len 20]
                    require ext_code.size(stor0)
                    staticcall stor0.cbAddress() with:
                            gas gas_remaining wei
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) > 0:
                        stor1 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        mem[ceil32(arg2.length) + 160] = 11
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 11
                        stor2.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor1)
                        call stor1.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if stor0 != ext_call.return_data[12 len 20]:
                            require ext_code.size(stor1)
                            call stor1.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor0 = ext_call.return_data[12 len 20]
                        require ext_code.size(stor0)
                        staticcall stor0.cbAddress() with:
                                gas gas_remaining wei
                    else:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor1 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor1 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor1 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        require ext_code.size(stor1)
                        call stor1.getAddress() with:
                             gas gas_remaining wei
                        mem[ceil32(arg2.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if stor0 == ext_call.return_data[12 len 20]:
                            require ext_code.size(stor0)
                            staticcall stor0.cbAddress() with:
                                    gas gas_remaining wei
                            mem[ceil32(arg2.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                        else:
                            require ext_code.size(stor1)
                            call stor1.getAddress() with:
                                 gas gas_remaining wei
                            mem[ceil32(arg2.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor0 = ext_call.return_data[12 len 20]
                            require ext_code.size(stor0)
                            staticcall stor0.cbAddress() with:
                                    gas gas_remaining wei
                            mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    else:
        if ext_code.size(stor1):
            require ext_code.size(stor1)
            call stor1.getAddress() with:
                 gas gas_remaining wei
            mem[ceil32(arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if stor0 == ext_call.return_data[12 len 20]:
                require ext_code.size(stor0)
                staticcall stor0.cbAddress() with:
                        gas gas_remaining wei
                mem[ceil32(arg2.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
            else:
                require ext_code.size(stor1)
                call stor1.getAddress() with:
                     gas gas_remaining wei
                mem[ceil32(arg2.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor0 = ext_call.return_data[12 len 20]
                require ext_code.size(stor0)
                staticcall stor0.cbAddress() with:
                        gas gas_remaining wei
                mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        else:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                mem[ceil32(arg2.length) + 160] = 11
                bool(stor2.length) = 0
                stor2.length.field_1 = 11
                stor2.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor1)
                call stor1.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if stor0 != ext_call.return_data[12 len 20]:
                    require ext_code.size(stor1)
                    call stor1.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor0 = ext_call.return_data[12 len 20]
                require ext_code.size(stor0)
                staticcall stor0.cbAddress() with:
                        gas gas_remaining wei
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor1 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    mem[ceil32(arg2.length) + 160] = 12
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 12
                    stor2.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor1)
                    call stor1.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if stor0 != ext_call.return_data[12 len 20]:
                        require ext_code.size(stor1)
                        call stor1.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor0 = ext_call.return_data[12 len 20]
                    require ext_code.size(stor0)
                    staticcall stor0.cbAddress() with:
                            gas gas_remaining wei
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor1 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        mem[ceil32(arg2.length) + 160] = 9
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 9
                        stor2.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor1)
                        call stor1.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if stor0 != ext_call.return_data[12 len 20]:
                            require ext_code.size(stor1)
                            call stor1.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor0 = ext_call.return_data[12 len 20]
                        require ext_code.size(stor0)
                        staticcall stor0.cbAddress() with:
                                gas gas_remaining wei
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) > 0:
                            stor1 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            mem[ceil32(arg2.length) + 160] = 11
                            bool(stor2.length) = 0
                            stor2.length.field_1 = 11
                            stor2.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor2.length + 31 / 32 > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor1)
                            call stor1.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if stor0 != ext_call.return_data[12 len 20]:
                                require ext_code.size(stor1)
                                call stor1.getAddress() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                stor0 = ext_call.return_data[12 len 20]
                            require ext_code.size(stor0)
                            staticcall stor0.cbAddress() with:
                                    gas gas_remaining wei
                        else:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor1 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor1 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor1 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                            require ext_code.size(stor1)
                            call stor1.getAddress() with:
                                 gas gas_remaining wei
                            mem[ceil32(arg2.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if stor0 == ext_call.return_data[12 len 20]:
                                require ext_code.size(stor0)
                                staticcall stor0.cbAddress() with:
                                        gas gas_remaining wei
                                mem[ceil32(arg2.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                            else:
                                require ext_code.size(stor1)
                                call stor1.getAddress() with:
                                     gas gas_remaining wei
                                mem[ceil32(arg2.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                stor0 = ext_call.return_data[12 len 20]
                                require ext_code.size(stor0)
                                staticcall stor0.cbAddress() with:
                                        gas gas_remaining wei
                                mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, ''
    require 0 < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    if 0 == 'L':
        require 1 < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        if 0 == 'P':
            require 2 < Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    emit 0x8bc7b2ee: request[arg1].field_0, arg1
}



}
