contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#
address stor0;
address stor1;
uint256 stor1;
array of uint256 sub_dcff121a;
array of uint256 dataProvider;
uint256 spotPrice;
uint256 baseRate;
uint256 sub_ef2119df;
uint256 marker;
uint8 stor8;

function sub_119c2423(?) {
    return bool(stor8)
}

function baseRate() {
    return baseRate
}

function spotPrice() {
    return spotPrice
}

function marker() {
    return marker
}

function dataProvider() {
    return dataProvider[0 len dataProvider.length]
}

function sub_dcff121a(?) {
    return sub_dcff121a[0 len sub_dcff121a.length]
}

function sub_ef2119df(?) {
    return sub_ef2119df
}

function _fallback() payable {
    revert
}

function sub_527d6699(?) {
    marker = spotPrice + sub_ef2119df
    if spotPrice + sub_ef2119df > 100:
        stor8 = 0
    else:
        stor8 = 1
    return bool(stor8)
}

function update() payable {
    require ext_code.size(address(stor1))
    call address(stor1).getPrice(string rg1) with:
         gas gas_remaining - 50 wei
        args 'URL'
    require ext_call.success
    if ext_call.return_data[0] > eth.balance(this.address):
        emit newOraclizeQuery(string rg1):
                              '',
                              'Oraclize query was NOT sent, ple',
                              'ase add some ETH to cover for th',
                              'e query fee',
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
                        args ''
                    if ext_call.success:
                        if ext_call.return_data[0] > (200000 * block.gasprice) + 10^18:
                        if ext_code.size(address(stor1)):
                            call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining - 9050 wei
                                args 60, 96, 160, 0, 3, 0, 0, 84, 'json(https://api.bravenewcoin.co', 'm/ep_pub/v2/gwa-eod-latest-twap?', '&coin=usdt).eod_twap', Mask(160, -256, 'm/ep_pub/v2/gwa-eod-latest-twap?', '&coin=usdt).eod_twap') << 256
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
                        args ''
                    if ext_call.success:
                        if ext_call.return_data[0] > (200000 * block.gasprice) + 10^18:
                        if ext_code.size(address(stor1)):
                            call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining - 9050 wei
                                args 60, 96, 160, 0, 3, 0, 0, 84, 'json(https://api.bravenewcoin.co', 'm/ep_pub/v2/gwa-eod-latest-twap?', '&coin=usdt).eod_twap', Mask(160, -256, 'm/ep_pub/v2/gwa-eod-latest-twap?', '&coin=usdt).eod_twap') << 256
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
                            args ''
                        if ext_call.success:
                            if ext_call.return_data[0] > (200000 * block.gasprice) + 10^18:
                            if ext_code.size(address(stor1)):
                                call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining - 9050 wei
                                    args 60, 96, 160, 0, 3, 0, 0, 84, 'json(https://api.bravenewcoin.co', 'm/ep_pub/v2/gwa-eod-latest-twap?', '&coin=usdt).eod_twap', Mask(160, -256, 'm/ep_pub/v2/gwa-eod-latest-twap?', '&coin=usdt).eod_twap') << 256
                                if ext_call.success:
    revert
}



}
