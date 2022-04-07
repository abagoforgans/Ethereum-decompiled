contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
array of uint256 stor2;
address stor5;
uint256 stor10;
uint256 stor11;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint8 stor17;

function _fallback() payable {
    stor10 = 10^16
    stor11 = 0
    stor13 = 300
    stor14 = block.timestamp + 300
    stor15 = 0
    stor17 = 0
    require not msg.value
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
    stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setProofType(bytes1 rg1) with:
         gas gas_remaining - 710 wei
        args 0
    require ext_call.success
    stor5 = msg.sender
    return code.data[1796 len 12127]
}



// =====================  Runtime code  =====================


#
#  - joinPot()
#  - __callback(bytes32 arg1, string arg2)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#  - rewardWinner()
#
address owner;
array of struct addresses;
address winnerAddress;
mapping of struct balances;
array of struct slots;
uint256 potSize;
uint256 amountWon;
uint256 potTime;
uint256 endTime;
uint256 totalBet;
uint256 random_number;
uint8 locked;

function balances(address arg1) {
    return balances[arg1].field_0
}

function amountWon() {
    return amountWon
}

function endTime() {
    return endTime
}

function slots(uint256 arg1) {
    require arg1 < slots.length
    return slots[arg1].field_0
}

function getEndTime() {
    return endTime
}

function random_number() {
    return random_number
}

function potSize() {
    return potSize
}

function owner() {
    return owner
}

function locked() {
    return bool(locked)
}

function winnerAddress() {
    return winnerAddress
}

function addresses(uint256 arg1) {
    require arg1 < addresses.length
    return addresses[arg1].field_0
}

function potTime() {
    return potTime
}

function totalBet() {
    return totalBet
}

function Kill() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function findWinner(uint256 arg1) {
    idx = 0
    while idx < slots.length:
        mem[0] = 9
        if arg1 > slots[idx].field_0:
            idx = idx + 1
            continue 
        require idx < addresses.length
        return addresses[idx].field_0
    return 0
}

function withdrawBalance() payable {
    if balances[address(msg.sender)].field_0 > 0:
        balances[address(msg.sender)].field_0 = 0
        call msg.sender with:
           value balances[address(msg.sender)].field_0 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            balances[address(msg.sender)].field_0 = 0
            balances[address(msg.sender)].field_1 = balances[address(msg.sender)].field_0
}

function getSlots() {
    if slots.length:
        mem[160] = uint256(slots.field_0)
        idx = 160
        s = 0
        while (32 * slots.length) + 128 > idx:
            mem[idx + 32] = slots[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * slots.length) + 160] = 32
    mem[(32 * slots.length) + 192] = slots.length
    if Mask(251, 0, slots.length):
        mem[(32 * slots.length) + 224] = mem[160]
        mem[(32 * slots.length) + 256 len floor32((32 * slots.length) - 1)] = mem[192 len floor32((32 * slots.length) - 1)]
    return Array(len=slots.length, data=mem[(32 * slots.length) + 224 len 32 * slots.length])
}

function getPlayers() {
    if addresses.length:
        mem[160] = address(addresses.field_0)
        idx = 160
        s = 0
        while (32 * addresses.length) + 128 > idx:
            mem[idx + 32] = addresses[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * addresses.length) + 160] = 32
    mem[(32 * addresses.length) + 192] = addresses.length
    if Mask(251, 0, addresses.length):
        mem[(32 * addresses.length) + 224] = mem[160]
        mem[(32 * addresses.length) + 256 len floor32((32 * addresses.length) - 1)] = mem[192 len floor32((32 * addresses.length) - 1)]
    return Array(len=addresses.length, data=mem[(32 * addresses.length) + 224 len 32 * addresses.length])
}



}
