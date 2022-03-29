contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor1;

function _fallback() {
    emit newOraclizeQuery(Array(len=53, data='Oraclize query was sent, standin', 'g by for the answer..'));
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                else:
                    if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                        stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                    else:
                        if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                            stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                        else:
                            if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
        if ext_code.size(stor0):
            call stor0.getAddress() with:
                 gas gas_remaining - 50 wei
            if ext_call.success:
                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                if ext_code.size(address(ext_call.return_data[0])):
                    call address(ext_call.return_data[0]).getPrice(string rg1) with:
                         gas gas_remaining - 50 wei
                        args 'WolframAlpha'
                    if ext_call.success:
                        if ext_call.return_data[0] > (200000 * block.gasprice) + 10^18:
                            return code.data[1889 len 3343]
                        if ext_code.size(address(stor1)):
                            call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining - 9050 wei
                                args 0, 96, 160, 0, 12, Mask(96, 0, 'WolframAlpha'), 0, 24, Mask(192, 0, 'current position of moon')
                            if ext_call.success:
                                return code.data[1889 len 3343]
    else:
        if ext_code.size(stor0):
            call stor0.getAddress() with:
                 gas gas_remaining - 50 wei
            if ext_call.success:
                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                if ext_code.size(address(ext_call.return_data[0])):
                    call address(ext_call.return_data[0]).getPrice(string rg1) with:
                         gas gas_remaining - 50 wei
                        args 'WolframAlpha'
                    if ext_call.success:
                        if ext_call.return_data[0] > (200000 * block.gasprice) + 10^18:
                            return code.data[1889 len 3343]
                        if ext_code.size(address(stor1)):
                            call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining - 9050 wei
                                args 0, 96, 160, 0, 12, Mask(96, 0, 'WolframAlpha'), 0, 24, Mask(192, 0, 'current position of moon')
                            if ext_call.success:
                                return code.data[1889 len 3343]
        else:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    else:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
            if ext_code.size(stor0):
                call stor0.getAddress() with:
                     gas gas_remaining - 50 wei
                if ext_call.success:
                    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                    if ext_code.size(address(ext_call.return_data[0])):
                        call address(ext_call.return_data[0]).getPrice(string rg1) with:
                             gas gas_remaining - 50 wei
                            args 'WolframAlpha'
                        if ext_call.success:
                            if ext_call.return_data[0] > (200000 * block.gasprice) + 10^18:
                                return code.data[1889 len 3343]
                            if ext_code.size(address(stor1)):
                                call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining - 9050 wei
                                    args 0, 96, 160, 0, 12, Mask(96, 0, 'WolframAlpha'), 0, 24, Mask(192, 0, 'current position of moon')
                                if ext_call.success:
                                    return code.data[1889 len 3343]
    revert
}



// =====================  Runtime code  =====================


const get_sender = msg.sender


address stor0;
address stor1;
uint256 stor1;
array of struct moon;

function sub_63cb0d5f(?) {
    return moon[0 len moon.length].field_0
}

function moon() {
    return moon[0 len moon.length].field_0
}

function _fallback() payable {
    revert
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function __callback(bytes32 arg1, string arg2) {
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                else:
                    if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                        stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                    else:
                        if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                            stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                        else:
                            if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
        require ext_code.size(stor0)
    else:
        if not ext_code.size(stor0):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    else:
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
         gas gas_remaining - 50 wei
    require ext_call.success
    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).cbAddress() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    moon[].field_0 = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg2.length) + 192] = uint256(moon.field_0)
    idx = ceil32(arg2.length) + 192
    s = 0
    while ceil32(arg2.length) + moon.length + 192 > idx + 32:
        mem[idx + 32] = moon[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xdeeaaacc: Array(len=moon.length, data=mem[ceil32(arg2.length) + 192 len moon.length + (floor32(moon.length - 1) + -moon.length + 32 % 32)])
}

function update() payable {
    emit newOraclizeQuery(Array(len=53, data='Oraclize query was sent, standin', 'g by for the answer..'));
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                else:
                    if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                        stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                    else:
                        if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                            stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                        else:
                            if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
        if ext_code.size(stor0):
            call stor0.getAddress() with:
                 gas gas_remaining - 50 wei
            if ext_call.success:
                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                if ext_code.size(address(ext_call.return_data[0])):
                    call address(ext_call.return_data[0]).getPrice(string rg1) with:
                         gas gas_remaining - 50 wei
                        args 'WolframAlpha'
                    if ext_call.success:
                        if ext_call.return_data[0] > (200000 * block.gasprice) + 10^18:
                        if ext_code.size(address(stor1)):
                            call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining - 9050 wei
                                args 0, 96, 160, 0, 12, Mask(96, 0, 'WolframAlpha'), 0, 24, Mask(192, 0, 'current position of moon')
                            if ext_call.success:
    else:
        if ext_code.size(stor0):
            call stor0.getAddress() with:
                 gas gas_remaining - 50 wei
            if ext_call.success:
                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                if ext_code.size(address(ext_call.return_data[0])):
                    call address(ext_call.return_data[0]).getPrice(string rg1) with:
                         gas gas_remaining - 50 wei
                        args 'WolframAlpha'
                    if ext_call.success:
                        if ext_call.return_data[0] > (200000 * block.gasprice) + 10^18:
                        if ext_code.size(address(stor1)):
                            call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining - 9050 wei
                                args 0, 96, 160, 0, 12, Mask(96, 0, 'WolframAlpha'), 0, 24, Mask(192, 0, 'current position of moon')
                            if ext_call.success:
        else:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    else:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
            if ext_code.size(stor0):
                call stor0.getAddress() with:
                     gas gas_remaining - 50 wei
                if ext_call.success:
                    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                    if ext_code.size(address(ext_call.return_data[0])):
                        call address(ext_call.return_data[0]).getPrice(string rg1) with:
                             gas gas_remaining - 50 wei
                            args 'WolframAlpha'
                        if ext_call.success:
                            if ext_call.return_data[0] > (200000 * block.gasprice) + 10^18:
                            if ext_code.size(address(stor1)):
                                call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining - 9050 wei
                                    args 0, 96, 160, 0, 12, Mask(96, 0, 'WolframAlpha'), 0, 24, Mask(192, 0, 'current position of moon')
                                if ext_call.success:
    revert
}



}
