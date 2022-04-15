contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;

function _fallback() {
    emit 0x80bda1fc: Array(len=15, data='INITIALIZE.....')
    if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
        stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        bool(stor2.length) = 0
        stor2.length.field_1 = 11
        stor2.length.field_8 = 'eth_mainnet' / 256
        idx = 0
        while stor2.length + 31 / 32 > idx:
            stor2[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
            stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
            bool(stor2.length) = 0
            stor2.length.field_1 = 12
            stor2.length.field_8 = 'eth_ropsten3' / 256
            idx = 0
            while stor2.length + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                bool(stor2.length) = 0
                stor2.length.field_1 = 9
                stor2.length.field_8 = 'eth_kovan' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                    if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                        stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                    else:
                        if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                            stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                        else:
                            if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                else:
                    stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 11
                    stor2.length.field_8 = 'eth_rinkeby' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
    return code.data[1393 len 5579]
}



// =====================  Runtime code  =====================


#
#  - update(string arg1, string arg2)
#
const getWrapperBalance = eth.balance(this.address)


address stor0;
address stor1;
uint256 stor1;
array of uint256 stor2;
array of struct data;

function data() {
    return data[0 len data.length].field_0
}

function _fallback() payable {
  stop
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function s2b(string arg1) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[64] = ceil32(arg1.length) + 160
    mem[ceil32(arg1.length) + 128] = 0
    idx = 0
    s = 0
    while idx < 32:
        if idx >= arg1.length:
            if idx >= 31:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 256 * s
            continue 
        require idx < arg1.length
        if idx >= 31:
            idx = idx + 1
            s = s or mem[idx + 128 len 1]
            continue 
        idx = idx + 1
        s = 256 * s or Mask(8, 248, mem[idx + 128]) >> 240
        continue 
    return s
}

function getWrapperData() {
    mem[96] = data.length
    mem[0] = 5
    mem[128] = uint256(data.field_0)
    idx = 128
    s = 0
    while data.length + 96 > idx:
        mem[idx + 32] = data[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(data.length) + 160
    mem[ceil32(data.length) + 128] = 0
    idx = 0
    s = 0
    while idx < 32:
        if idx >= data.length:
            if idx >= 31:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 256 * s
            continue 
        require idx < data.length
        if idx >= 31:
            idx = idx + 1
            s = s or mem[idx + 128 len 1]
            continue 
        idx = idx + 1
        s = 256 * s or Mask(8, 248, mem[idx + 128]) >> 240
        continue 
    return s
}

function getPrice(string arg1) {
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor2.length) = 0
            stor2.length.field_1 = 11
            stor2.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor2.length + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor2.length) = 0
                stor2.length.field_1 = 12
                stor2.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 9
                    stor2.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                    else:
                        stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 11
                        stor2.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
        require ext_code.size(stor0)
    else:
        if not ext_code.size(stor0):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor2.length) = 0
                stor2.length.field_1 = 11
                stor2.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 12
                    stor2.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 9
                        stor2.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        else:
                            stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor2.length) = 0
                            stor2.length.field_1 = 11
                            stor2.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor2.length + 31 / 32 > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
            require ext_code.size(stor0)
    call stor0.getAddress() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x524f3889 with:
         gas gas_remaining - 710 wei
        args Array(len=arg1.length, data=arg1[all])
    require ext_call.success
    return ext_call.return_data[0]
}

function __callback(bytes32 arg1, string arg2) {
    emit 0x80bda1fc: Array(len=23, data='EXECUTING CALLBACK.....')
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor2.length) = 0
            stor2.length.field_1 = 11
            stor2.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor2.length + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
            require ext_code.size(stor0)
            call stor0.getAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).cbAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require msg.sender == ext_call.return_data[12 len 20]
            emit 0x80bda1fc: Array(len=19, data='WRITING RESULT.....')
            data[].field_0 = Array(len=arg2.length, data=arg2[all])
            mem[ceil32(arg2.length) + 256] = uint256(data.field_0)
            idx = ceil32(arg2.length) + 256
            s = 0
            while ceil32(arg2.length) + data.length + 256 > idx + 32:
                mem[idx + 32] = data[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            emit 0x6378a25b: Array(len=data.length, data=mem[ceil32(arg2.length) + 256 len data.length + (floor32(data.length - 1) + -data.length + 32 % 32)])
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor2.length) = 0
                stor2.length.field_1 = 12
                stor2.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor0)
                call stor0.getAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).cbAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require msg.sender == ext_call.return_data[12 len 20]
                emit 0x80bda1fc: Array(len=19, data='WRITING RESULT.....')
                data[].field_0 = Array(len=arg2.length, data=arg2[all])
                mem[ceil32(arg2.length) + 256] = uint256(data.field_0)
                idx = ceil32(arg2.length) + 256
                s = 0
                while ceil32(arg2.length) + data.length + 256 > idx + 32:
                    mem[idx + 32] = data[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x6378a25b: Array(len=data.length, data=mem[ceil32(arg2.length) + 256 len data.length + (floor32(data.length - 1) + -data.length + 32 % 32)])
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 9
                    stor2.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor0)
                    call stor0.getAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).cbAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require msg.sender == ext_call.return_data[12 len 20]
                    emit 0x80bda1fc: Array(len=19, data='WRITING RESULT.....')
                    data[].field_0 = Array(len=arg2.length, data=arg2[all])
                    mem[ceil32(arg2.length) + 256] = uint256(data.field_0)
                    idx = ceil32(arg2.length) + 256
                    s = 0
                    while ceil32(arg2.length) + data.length + 256 > idx + 32:
                        mem[idx + 32] = data[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0x6378a25b: Array(len=data.length, data=mem[ceil32(arg2.length) + 256 len data.length + (floor32(data.length - 1) + -data.length + 32 % 32)])
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
                        emit 0x80bda1fc: Array(len=19, data='WRITING RESULT.....')
                        data[].field_0 = Array(len=arg2.length, data=arg2[all])
                        mem[ceil32(arg2.length) + 192] = uint256(data.field_0)
                        idx = ceil32(arg2.length) + 192
                        s = 0
                        while ceil32(arg2.length) + data.length + 192 > idx + 32:
                            mem[idx + 32] = data[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        emit 0x6378a25b: Array(len=data.length, data=mem[ceil32(arg2.length) + 192 len data.length + (floor32(data.length - 1) + -data.length + 32 % 32)])
                    else:
                        stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 11
                        stor2.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
                        emit 0x80bda1fc: Array(len=19, data='WRITING RESULT.....')
                        data[].field_0 = Array(len=arg2.length, data=arg2[all])
                        mem[ceil32(arg2.length) + 256] = uint256(data.field_0)
                        idx = ceil32(arg2.length) + 256
                        s = 0
                        while ceil32(arg2.length) + data.length + 256 > idx + 32:
                            mem[idx + 32] = data[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        emit 0x6378a25b: Array(len=data.length, data=mem[ceil32(arg2.length) + 256 len data.length + (floor32(data.length - 1) + -data.length + 32 % 32)])
    else:
        if ext_code.size(stor0):
            call stor0.getAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).cbAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require msg.sender == ext_call.return_data[12 len 20]
            emit 0x80bda1fc: Array(len=19, data='WRITING RESULT.....')
            data[].field_0 = Array(len=arg2.length, data=arg2[all])
            mem[ceil32(arg2.length) + 192] = uint256(data.field_0)
            idx = ceil32(arg2.length) + 192
            s = 0
            while ceil32(arg2.length) + data.length + 192 > idx + 32:
                mem[idx + 32] = data[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            emit 0x6378a25b: Array(len=data.length, data=mem[ceil32(arg2.length) + 192 len data.length + (floor32(data.length - 1) + -data.length + 32 % 32)])
        else:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor2.length) = 0
                stor2.length.field_1 = 11
                stor2.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor0)
                call stor0.getAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).cbAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require msg.sender == ext_call.return_data[12 len 20]
                emit 0x80bda1fc: Array(len=19, data='WRITING RESULT.....')
                data[].field_0 = Array(len=arg2.length, data=arg2[all])
                mem[ceil32(arg2.length) + 256] = uint256(data.field_0)
                idx = ceil32(arg2.length) + 256
                s = 0
                while ceil32(arg2.length) + data.length + 256 > idx + 32:
                    mem[idx + 32] = data[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x6378a25b: Array(len=data.length, data=mem[ceil32(arg2.length) + 256 len data.length + (floor32(data.length - 1) + -data.length + 32 % 32)])
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 12
                    stor2.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor0)
                    call stor0.getAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).cbAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require msg.sender == ext_call.return_data[12 len 20]
                    emit 0x80bda1fc: Array(len=19, data='WRITING RESULT.....')
                    data[].field_0 = Array(len=arg2.length, data=arg2[all])
                    mem[ceil32(arg2.length) + 256] = uint256(data.field_0)
                    idx = ceil32(arg2.length) + 256
                    s = 0
                    while ceil32(arg2.length) + data.length + 256 > idx + 32:
                        mem[idx + 32] = data[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0x6378a25b: Array(len=data.length, data=mem[ceil32(arg2.length) + 256 len data.length + (floor32(data.length - 1) + -data.length + 32 % 32)])
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 9
                        stor2.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
                        emit 0x80bda1fc: Array(len=19, data='WRITING RESULT.....')
                        data[].field_0 = Array(len=arg2.length, data=arg2[all])
                        mem[ceil32(arg2.length) + 256] = uint256(data.field_0)
                        idx = ceil32(arg2.length) + 256
                        s = 0
                        while ceil32(arg2.length) + data.length + 256 > idx + 32:
                            mem[idx + 32] = data[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        emit 0x6378a25b: Array(len=data.length, data=mem[ceil32(arg2.length) + 256 len data.length + (floor32(data.length - 1) + -data.length + 32 % 32)])
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).cbAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require msg.sender == ext_call.return_data[12 len 20]
                            emit 0x80bda1fc: Array(len=19, data='WRITING RESULT.....')
                            data[].field_0 = Array(len=arg2.length, data=arg2[all])
                            mem[ceil32(arg2.length) + 192] = uint256(data.field_0)
                            idx = ceil32(arg2.length) + 192
                            s = 0
                            while ceil32(arg2.length) + data.length + 192 > idx + 32:
                                mem[idx + 32] = data[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x6378a25b: Array(len=data.length, data=mem[ceil32(arg2.length) + 192 len data.length + (floor32(data.length - 1) + -data.length + 32 % 32)])
                        else:
                            stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor2.length) = 0
                            stor2.length.field_1 = 11
                            stor2.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor2.length + 31 / 32 > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).cbAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require msg.sender == ext_call.return_data[12 len 20]
                            emit 0x80bda1fc: Array(len=19, data='WRITING RESULT.....')
                            data[].field_0 = Array(len=arg2.length, data=arg2[all])
                            mem[ceil32(arg2.length) + 256] = uint256(data.field_0)
                            idx = ceil32(arg2.length) + 256
                            s = 0
                            while ceil32(arg2.length) + data.length + 256 > idx + 32:
                                mem[idx + 32] = data[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x6378a25b: Array(len=data.length, data=mem[ceil32(arg2.length) + 256 len data.length + (floor32(data.length - 1) + -data.length + 32 % 32)])
}

function update(uint256 arg1, string arg2, string arg3) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    emit newOraclizeQuery(Array(len=53, data='Oraclize query was sent, standin', 'g by for the answer..'));
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 11
            bool(stor2.length) = 0
            stor2.length.field_1 = 11
            stor2.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor2.length + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
            require ext_code.size(stor0)
            call stor0.getAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x524f3889 with:
                 gas gas_remaining - 710 wei
                args Array(len=arg2.length, data=arg2[all])
            require ext_call.success
            if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 356 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 356] = arg3.length
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 388 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                if not arg3.length % 32:
                    require ext_code.size(address(stor1))
                    call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining - 9710 wei
                        args arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 356 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 128
                else:
                    mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 388] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 420 len arg3.length % 32]
                    require ext_code.size(address(stor1))
                    call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining - 9710 wei
                        args arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 356 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 128
                require ext_call.success
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 12
                bool(stor2.length) = 0
                stor2.length.field_1 = 12
                stor2.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor0)
                call stor0.getAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x524f3889 with:
                     gas gas_remaining - 710 wei
                    args Array(len=arg2.length, data=arg2[all])
                require ext_call.success
                if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 356 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 356] = arg3.length
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 388 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                    if not arg3.length % 32:
                        require ext_code.size(address(stor1))
                        call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining - 9710 wei
                            args arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 356 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 128
                    else:
                        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 388] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 420 len arg3.length % 32]
                        require ext_code.size(address(stor1))
                        call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining - 9710 wei
                            args arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 356 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 128
                    require ext_call.success
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 9
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 9
                    stor2.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor0)
                    call stor0.getAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x524f3889 with:
                         gas gas_remaining - 710 wei
                        args Array(len=arg2.length, data=arg2[all])
                    require ext_call.success
                    if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 356 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 356] = arg3.length
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 388 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                        if not arg3.length % 32:
                            require ext_code.size(address(stor1))
                            call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining - 9710 wei
                                args arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 356 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 128
                        else:
                            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 388] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 420 len arg3.length % 32]
                            require ext_code.size(address(stor1))
                            call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining - 9710 wei
                                args arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 356 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 128
                        require ext_call.success
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x524f3889 with:
                             gas gas_remaining - 710 wei
                            args Array(len=arg2.length, data=arg2[all])
                        require ext_call.success
                        if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 0xadf59f9900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 292 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 292] = arg3.length
                            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 324 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                require ext_code.size(address(stor1))
                                call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining - 9710 wei
                                    args arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 292 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 128
                            else:
                                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 324] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 356 len arg3.length % 32]
                                require ext_code.size(address(stor1))
                                call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining - 9710 wei
                                    args arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 292 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 128
                            require ext_call.success
                    else:
                        stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 11
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 11
                        stor2.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x524f3889 with:
                             gas gas_remaining - 710 wei
                            args Array(len=arg2.length, data=arg2[all])
                        require ext_call.success
                        if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 356 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 356] = arg3.length
                            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 388 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                require ext_code.size(address(stor1))
                                call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining - 9710 wei
                                    args arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 356 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 128
                            else:
                                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 388] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 420 len arg3.length % 32]
                                require ext_code.size(address(stor1))
                                call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining - 9710 wei
                                    args arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 356 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 128
                            require ext_call.success
    else:
        if ext_code.size(stor0):
            call stor0.getAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x524f3889 with:
                 gas gas_remaining - 710 wei
                args Array(len=arg2.length, data=arg2[all])
            require ext_call.success
            if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 0xadf59f9900000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 292 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 292] = arg3.length
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 324 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                if not arg3.length % 32:
                    require ext_code.size(address(stor1))
                    call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining - 9710 wei
                        args arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 292 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 128
                else:
                    mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 324] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 356 len arg3.length % 32]
                    require ext_code.size(address(stor1))
                    call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining - 9710 wei
                        args arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 292 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 128
                require ext_call.success
        else:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 11
                bool(stor2.length) = 0
                stor2.length.field_1 = 11
                stor2.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor0)
                call stor0.getAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x524f3889 with:
                     gas gas_remaining - 710 wei
                    args Array(len=arg2.length, data=arg2[all])
                require ext_call.success
                if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 356 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 356] = arg3.length
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 388 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                    if not arg3.length % 32:
                        require ext_code.size(address(stor1))
                        call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining - 9710 wei
                            args arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 356 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 128
                    else:
                        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 388] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 420 len arg3.length % 32]
                        require ext_code.size(address(stor1))
                        call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining - 9710 wei
                            args arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 356 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 128
                    require ext_call.success
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 12
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 12
                    stor2.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor0)
                    call stor0.getAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x524f3889 with:
                         gas gas_remaining - 710 wei
                        args Array(len=arg2.length, data=arg2[all])
                    require ext_call.success
                    if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 356 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 356] = arg3.length
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 388 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                        if not arg3.length % 32:
                            require ext_code.size(address(stor1))
                            call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining - 9710 wei
                                args arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 356 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 128
                        else:
                            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 388] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 420 len arg3.length % 32]
                            require ext_code.size(address(stor1))
                            call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining - 9710 wei
                                args arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 356 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 128
                        require ext_call.success
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 9
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 9
                        stor2.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x524f3889 with:
                             gas gas_remaining - 710 wei
                            args Array(len=arg2.length, data=arg2[all])
                        require ext_call.success
                        if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 356 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 356] = arg3.length
                            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 388 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                require ext_code.size(address(stor1))
                                call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining - 9710 wei
                                    args arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 356 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 128
                            else:
                                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 388] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 420 len arg3.length % 32]
                                require ext_code.size(address(stor1))
                                call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining - 9710 wei
                                    args arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 356 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 128
                            require ext_call.success
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x524f3889 with:
                                 gas gas_remaining - 710 wei
                                args Array(len=arg2.length, data=arg2[all])
                            require ext_call.success
                            if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 0xadf59f9900000000000000000000000000000000000000000000000000000000
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + 292 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 292] = arg3.length
                                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 324 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                                if not arg3.length % 32:
                                    require ext_code.size(address(stor1))
                                    call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                                       value ext_call.return_data[0] wei
                                         gas gas_remaining - 9710 wei
                                        args arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 292 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 128
                                else:
                                    mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 324] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 356 len arg3.length % 32]
                                    require ext_code.size(address(stor1))
                                    call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                                       value ext_call.return_data[0] wei
                                         gas gas_remaining - 9710 wei
                                        args arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 292 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 128
                                require ext_call.success
                        else:
                            stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 11
                            bool(stor2.length) = 0
                            stor2.length.field_1 = 11
                            stor2.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor2.length + 31 / 32 > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x524f3889 with:
                                 gas gas_remaining - 710 wei
                                args Array(len=arg2.length, data=arg2[all])
                            require ext_call.success
                            if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + 356 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 356] = arg3.length
                                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 388 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                                if not arg3.length % 32:
                                    require ext_code.size(address(stor1))
                                    call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                                       value ext_call.return_data[0] wei
                                         gas gas_remaining - 9710 wei
                                        args arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 356 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 128
                                else:
                                    mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 388] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 420 len arg3.length % 32]
                                    require ext_code.size(address(stor1))
                                    call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                                       value ext_call.return_data[0] wei
                                         gas gas_remaining - 9710 wei
                                        args arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 356 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 128
                                require ext_call.success
}



}
