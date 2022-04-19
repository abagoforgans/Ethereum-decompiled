contract main {


// =======================  Init code  ======================


address stor6;
address stor7;
uint256 stor11;

function _fallback() payable {
    stor6 = 0xd3f81260a44a1df7a7269cf66abd9c7e4f8cdcd1
    stor7 = 0xfc5429ef09ed041622a23fee92e65efab389c1ce
    stor11 = 500000
    require not msg.value
    return code.data[207 len 11489]
}



// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - update()
#
address stor0;
address stor1;
uint256 stor1;
array of uint256 stor2;
address charityAddress;
address tokenContractAddress;
uint256 roundNumber;
mapping of struct lookupPriorLottery;
uint256 totalTicketsSold;
uint256 stor11;
uint8 stor12;
uint8 stor12; offset 8
uint256 stor12; offset 8

function lotteries(uint256 arg1) {
    return lookupPriorLottery[arg1].field_0, 
           lookupPriorLottery[arg1].field_256,
           address(lookupPriorLottery[arg1].field_512),
           bool(uint8(lookupPriorLottery[arg1].field_672))
}

function totalTicketsSold() {
    return totalTicketsSold
}

function roundNumber() {
    return roundNumber
}

function tokenContract() {
    return tokenContractAddress
}

function stopped() {
    return bool(uint8(stor12.field_8))
}

function charity() {
    return charityAddress
}

function lookupPriorLottery(uint256 arg1) {
    return lookupPriorLottery[arg1].field_0, lookupPriorLottery[arg1].field_256, address(lookupPriorLottery[arg1].field_512)
}

function waiting() {
    return bool(uint8(stor12.field_0))
}

function ticketsOwnedByUser(address arg1) {
    return lookupPriorLottery[stor8][4][address(arg1)].field_0
}

function depositFunds() payable {
  stop
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function updateGas(uint256 arg1) {
    if 0x3a31ac87092909af0e01b4d8fc6e03157e91f4bb != msg.sender:
        require msg.sender == 0x44fc32c2a5d18700284cc9e0e2da3ad83e9a6c5d
    stor11 = arg1
}

function stopGo() {
    if 0x3a31ac87092909af0e01b4d8fc6e03157e91f4bb != msg.sender:
        require msg.sender == 0x44fc32c2a5d18700284cc9e0e2da3ad83e9a6c5d
    if uint8(stor12.field_8):
        Mask(248, 0, stor12.field_8) = 0
    else:
        Mask(248, 0, stor12.field_8) = 1
}

function giveAllToCharity() {
    if 0x3a31ac87092909af0e01b4d8fc6e03157e91f4bb != msg.sender:
        require msg.sender == 0x44fc32c2a5d18700284cc9e0e2da3ad83e9a6c5d
    call charityAddress with:
       value 10^16 * lookupPriorLottery[stor8].field_0 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    roundNumber++
}

function _fallback() payable {
    require msg.value >= 10^16
    require msg.value % 10^16 <= msg.value
    require totalTicketsSold + (msg.value - (msg.value % 10^16) / 10^16) >= totalTicketsSold
    totalTicketsSold += msg.value - (msg.value % 10^16) / 10^16
    require lookupPriorLottery[stor8][4][address(msg.sender)].field_0 + (msg.value - (msg.value % 10^16) / 10^16) >= lookupPriorLottery[stor8][4][address(msg.sender)].field_0
    lookupPriorLottery[stor8][4][address(msg.sender)].field_0 += msg.value - (msg.value % 10^16) / 10^16
    mem[0] = roundNumber
    mem[32] = 9
    idx = 0
    s = stor[sha3(mem[0 len 64])]
    while idx < msg.value - (msg.value % 10^16) / 10^16:
        mem[0] = s
        mem[32] = sha3(roundNumber, 9) + 3
        address(lookupPriorLottery[stor8][3][s].field_0) = msg.sender
        idx = idx + 1
        s = s + 1
        continue 
    require lookupPriorLottery[stor8].field_0 + (msg.value - (msg.value % 10^16) / 10^16) >= lookupPriorLottery[stor8].field_0
    lookupPriorLottery[stor8].field_0 += msg.value - (msg.value % 10^16) / 10^16
}

function runInOneDay() payable {
    if 0x3a31ac87092909af0e01b4d8fc6e03157e91f4bb != msg.sender:
        require msg.sender == 0x44fc32c2a5d18700284cc9e0e2da3ad83e9a6c5d
    uint8(stor12.field_0) = 1
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor2.length) = 0
            uint255(stor2.length.field_1) = 11
            Mask(248, 0, stor2.length.field_8) = 'eth_mainnet' / 256
            idx = 0
            while stor2.length + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor2.length) = 0
                uint255(stor2.length.field_1) = 12
                Mask(248, 0, stor2.length.field_8) = 'eth_ropsten3' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor2.length) = 0
                    uint255(stor2.length.field_1) = 9
                    Mask(248, 0, stor2.length.field_8) = 'eth_kovan' / 256
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
                        uint255(stor2.length.field_1) = 11
                        Mask(248, 0, stor2.length.field_8) = 'eth_rinkeby' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
    else:
        if not ext_code.size(stor0):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor2.length) = 0
                uint255(stor2.length.field_1) = 11
                Mask(248, 0, stor2.length.field_8) = 'eth_mainnet' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor2.length) = 0
                    uint255(stor2.length.field_1) = 12
                    Mask(248, 0, stor2.length.field_8) = 'eth_ropsten3' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor2.length) = 0
                        uint255(stor2.length.field_1) = 9
                        Mask(248, 0, stor2.length.field_8) = 'eth_kovan' / 256
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
                            uint255(stor2.length.field_1) = 11
                            Mask(248, 0, stor2.length.field_8) = 'eth_rinkeby' / 256
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
    require ext_code.size(address(stor1))
    call address(stor1).getPrice(string rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 64, stor11, 0
    require ext_call.success
    if ext_call.return_data[0] <= (block.gasprice * stor11) + 10^18:
        require ext_code.size(address(stor1))
        call address(stor1).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 9710 wei
            args 24 * 3600, 128, 160, 0, stor11, 0, 0
        require ext_call.success
}



}
