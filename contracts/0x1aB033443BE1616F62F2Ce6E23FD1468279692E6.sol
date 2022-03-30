contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor1;
address stor3;

function _fallback() payable {
    stor3 = msg.sender
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
    require ext_code.size(address(stor1))
    call address(stor1).setProofType(bytes1 rg1) with:
         gas gas_remaining - 50 wei
        args 0x1100000000000000000000000000000000000000000000000000000000000000
    require ext_call.success
    return code.data[1789 len 5444]
}



// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#  - ETHXBT()
#
address stor0;
address stor1;
uint256 stor1;
address owner;

function owner() {
    return owner
}

function kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function update() payable {
    require ext_code.size(address(stor1))
    call address(stor1).getPrice(string rg1) with:
         gas gas_remaining - 50 wei
        args Array(len=3, data='URL')
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
    require ext_code.size(address(stor1))
    call address(stor1).getPrice(string rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args 64, 500000, 3, 'URL' % 16777216
    require ext_call.success
    if ext_call.return_data[0] > (500000 * block.gasprice) + 10^18:
    require ext_code.size(address(stor1))
    call address(stor1).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
       value ext_call.return_data[0] wei
         gas gas_remaining - 9050 wei
        args 60, 128, 192, 500000, 0, 3, 'URL' % 16777216, 0, 123, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHXBT,DASHXBT,', 'ETHUSD,LTCXBT,XBTUSD,LTCUSD,DASH', 'USD,ETCUSD).result.*[b,a].0' >> 256, Mask(216, -512, 'blic/Ticker?pair=ETHXBT,DASHXBT,', 'ETHUSD,LTCXBT,XBTUSD,LTCUSD,DASH', 'USD,ETCUSD).result.*[b,a].0') << 512
    require ext_call.success
}



}
