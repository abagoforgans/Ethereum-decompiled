contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor1;
array of uint256 stor2;
address stor5;
uint256 stor6;
uint256 stor9;

function _fallback() payable {
    stor6 = 10^16
    stor9 = 25
    require not msg.value
    stor5 = msg.sender
    if code.data[4884 len 32] > 0:
        stor6 = code.data[4884 len 32]
    if code.data[4916 len 32] > 0:
        stor9 = code.data[4916 len 32]
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
    if ext_call.return_data[12 len 20] != address(stor1):
        require ext_code.size(stor0)
        call stor0.getAddress() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    require ext_code.size(address(stor1))
    call address(stor1).setProofType(bytes1 arg1) with:
         gas gas_remaining - 710 wei
        args 0
    require ext_call.success
    return code.data[1946 len 2938]
}



// =====================  Runtime code  =====================


address stor5;
uint256 minimumBet;
uint256 totalBets;
uint256 numberOfBets;
uint256 maxAmountOfBets;
uint256 numberWinner;
array of address stor11;
mapping of uint256 stor12;

function numberOfBets() {
    return numberOfBets
}

function numberWinner() {
    return numberWinner
}

function totalBets() {
    return totalBets
}

function minimumBet() {
    return minimumBet
}

function maxAmountOfBets() {
    return maxAmountOfBets
}

function kill() {
    if stor5 != msg.sender:
    selfdestruct(stor5)
}

function _fallback() payable {
    revert
}

function __callback(bytes32 arg1, string arg2) {
  stop
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function checkPlayerExists(address arg1) {
    require arg1
    if stor12[address(arg1)] <= 0:
        return 0
    return 1
}

function generateNumberWinner() payable {
    if numberOfBets >= maxAmountOfBets:
        numberWinner = (sha3(block.hash(block.number - 1)) % 10) + 1
        if numberWinner > 5:
            numberWinner -= 5
        if numberOfBets >= maxAmountOfBets:
            if uint256(stor11[stor10]) > 0:
                require uint256(stor11[stor10])
                idx = 0
                while idx < uint256(stor11[stor10]):
                    require idx < uint256(stor11[stor10])
                    call address(stor11[stor10][idx]) with:
                       value 97 * totalBets / uint256(stor11[stor10]) / 100 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    mem[0] = numberWinner
                    mem[32] = 11
                    idx = idx + 1
                    continue 
                call stor5 with:
                   value 3 * totalBets / 100 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                totalBets = 0
            idx = 1
            while idx <= 5:
                mem[0] = idx
                mem[32] = 11
                uint256(stor11[idx]) = 0
                if not uint256(stor11[idx]) <= 0:
                    mem[0] = sha3(idx, 11)
                    s = sha3(sha3(idx, 11))
                    while sha3(sha3(idx, 11)) + uint256(stor11[idx]) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            numberOfBets = 0
}

function bet(uint256 arg1) payable {
    require numberOfBets < maxAmountOfBets
    require arg1 >= 1
    require arg1 <= 5
    require msg.value == minimumBet
    stor12[address(msg.sender)] = arg1
    uint256(stor11[arg1])++
    if not uint256(stor11[arg1]) <= uint256(stor11[arg1]) + 1:
        idx = uint256(stor11[arg1]) + 1
        while uint256(stor11[arg1]) > idx:
            uint256(stor11[arg1][idx]) = 0
            idx = idx + 1
            continue 
    address(stor11[arg1][uint256(stor11[arg1])]) = msg.sender
    numberOfBets++
    require msg.value + totalBets >= totalBets
    totalBets += msg.value
    if numberOfBets >= maxAmountOfBets:
        numberWinner = (sha3(block.hash(block.number - 1)) % 10) + 1
        if numberWinner > 5:
            numberWinner -= 5
        if numberOfBets >= maxAmountOfBets:
            if uint256(stor11[stor10]) > 0:
                require uint256(stor11[stor10])
                idx = 0
                while idx < uint256(stor11[stor10]):
                    require idx < uint256(stor11[stor10])
                    call address(stor11[stor10][idx]) with:
                       value 97 * totalBets / uint256(stor11[stor10]) / 100 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    mem[0] = numberWinner
                    mem[32] = 11
                    idx = idx + 1
                    continue 
                call stor5 with:
                   value 3 * totalBets / 100 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                totalBets = 0
            idx = 1
            while idx <= 5:
                mem[0] = idx
                mem[32] = 11
                uint256(stor11[idx]) = 0
                if not uint256(stor11[idx]) <= 0:
                    mem[0] = sha3(idx, 11)
                    s = sha3(sha3(idx, 11))
                    while sha3(sha3(idx, 11)) + uint256(stor11[idx]) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            numberOfBets = 0
}



}
