contract main {




// =====================  Runtime code  =====================


#
#  - sub_01d3a6da(?)
#  - __callback(bytes32 arg1, string arg2)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#  - sub_4b763075(?)
#
const sub_34532b27(?) = 2

const sub_4b62bc3f(?) = 9

const sub_6d8d4e0f(?) = 0


address stor0;
address stor1;
uint256 stor1;
array of uint256 stor2;
address owner;
uint256 min_bet;
uint256 sub_49e65d32;
uint256 sub_a42dcff9;
uint256 commision;
uint256 sub_5453aa18;
array of struct games;
mapping of uint256 sub_d1a76643;
mapping of uint256 sub_d07ab299;
mapping of address sub_d0a4dcb3;

function games(uint256 arg1) {
    require arg1 < games.length
    return games[arg1].field_0, games[arg1].field_256, bool(games[arg1].field_512)
}

function sub_49e65d32(?) {
    return sub_49e65d32
}

function sub_5453aa18(?) {
    return sub_5453aa18
}

function owner() {
    return owner
}

function sub_a42dcff9(?) {
    return sub_a42dcff9
}

function commision() {
    return commision
}

function min_bet() {
    return min_bet
}

function sub_d07ab299(?) {
    return sub_d07ab299[arg1]
}

function sub_d0a4dcb3(?) {
    return sub_d0a4dcb3[arg1]
}

function sub_d1a76643(?) {
    return sub_d1a76643[arg1]
}

function donate() payable {
  stop
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Access denied'
    if not arg1:
        revert with 0, 'Zero address'
    owner = arg1
}

function setOraclizeGasLimit(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'Access denied'
    if arg1 < 21000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Value does not match the interval'
    if arg1 > 5 * 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Value does not match the interval'
    sub_a42dcff9 = arg1
}

function refundGame(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'Access denied'
    require arg1 < games.length
    if games[arg1].field_0 <= 0:
        revert with 0, 'Game not found'
    if sub_d07ab299[arg1]:
        if sub_d07ab299[arg1] >= block.number - 1000:
            revert with 0, 'Game not found'
    require arg1 < games.length
    if games[arg1].field_512:
        revert with 0, 'Game over'
    games[arg1].field_512 = 1
    idx = 0
    while idx < games[arg1].field_768:
        call stor[sha3((6 * arg1) + ('name', 'games', 11) + 3) + idx].field_0 with:
           value games[arg1].field_0 wei
             gas 2300 * is_zero(value) wei
        mem[0] = (6 * arg1) + sha3(11) + 3
        mem[96] = games[arg1].field_0
        emit Refund(games[arg1].field_0, arg1, stor[sha3((6 * arg1) + ('name', 'games', 11) + 3) + idx].field_0);
        idx = idx + 1
        continue 
    emit 0xdef962f6: arg1
}

function setOraclizeGasPrice(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'Access denied'
    if arg1 < 10^9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Value does not match the interval'
    if arg1 > 10^11:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Value does not match the interval'
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
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != address(stor1):
        require ext_code.size(stor0)
        call stor0.getAddress() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    require ext_code.size(address(stor1))
    call address(stor1).setCustomGasPrice(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
