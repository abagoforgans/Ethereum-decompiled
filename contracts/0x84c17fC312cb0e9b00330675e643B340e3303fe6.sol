contract main {


// =======================  Init code  ======================


address stor0;
array of struct stor5;
array of uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
address stor12;
address stor13;
address stor14;
mapping of uint256 stor16;
mapping of uint256 stor18;

function _fallback() payable {
    mem[96] = 1705809128630710
    mem[128] = 1792607003891050
    mem[160] = 2161527412018200
    mem[192] = 31 * 10^14
    mem[224] = 4850815505189580
    mem[256] = 7420474777448070
    mem[288] = 10495413267662000
    mem[320] = 136 * 10^14
    mem[352] = 16352510087266600
    mem[384] = 18584222474460800
    mem[416] = 20297203394353400
    mem[448] = 21574226804123700
    mem[480] = 22514888079125500
    mem[512] = 23206887467068100
    mem[544] = 23718512088594900
    mem[576] = 241 * 10^14
    mem[608] = 24387375737585200
    mem[640] = 24606234413965100
    mem[672] = 24774758401095100
    mem[704] = 24905928237129500
    mem[736] = 25009083126444700
    mem[768] = 25091004900315500
    mem[800] = 25156667500184900
    mem[832] = 25209756097561000
    mem[864] = 25253028594880900
    mem[896] = 25288569247319300
    mem[928] = 25317968132920800
    mem[960] = 25342449317335500
    mem[992] = 25362963238901500
    mem[1024] = 25380253925826900
    mem[1056] = 25394908351183700
    stor5.length = 31
    s = 0
    idx = 96
    while 1088 > idx:
        stor5[s].field_0 = mem[idx + 25 len 7]
        stor5[s].field_56 = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 31
    while stor5.length > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1120 len 144] = code.data[8925 len 144]
    stor6.length = 289
    s = 0
    idx = 1120
    while 1264 > idx:
        stor6[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 5
    while stor6.length + 31 / 32 > idx:
        stor6[idx] = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
    stor12 = msg.sender
    stor7 = 22722
    stor16[address(this.address)] = 22722
    stor9 = block.timestamp
    stor10 = block.timestamp
    stor11 = 1
    stor18[0] = 22722
    stor8 = 16 * 10^14
    stor13 = 0x8d501450a731f441647d538c5e97b86509cd2ad9
    stor14 = 0x892d55278a7c77dd3744f1c17c12b661c28d1a9
    return code.data[1001 len 7924]
}



// =====================  Runtime code  =====================


#
#  - newRound()
#
const name = 'Claes Cash'

const decimals = 0

const symbol = 'CC'


address stor0;
address stor1;
uint256 stor1;
array of uint256 stor2;
array of uint256 stor5;
array of uint256 stor6;
uint256 totalSupply;
uint256 betPrice;
uint256 genesisTimestamp;
uint256 roundStartedTimestamp;
uint256 currentRoundCount;
address owner;
address stor13;
address stor14;
mapping of uint256 allowance;
mapping of uint256 balanceOf;
mapping of uint8 stor17;
mapping of uint256 tweets;
mapping of struct betting;
mapping of uint256 stor20;
mapping of uint256 stor21;
mapping of uint8 stor22;

function totalSupply() {
    return totalSupply
}

function getBetting(uint256 arg1, address arg2) {
    return bool(betting[arg1][address(arg2)].field_0), betting[arg1][address(arg2)].field_256
}

function roundStartedTimestamp() {
    return roundStartedTimestamp
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function currentRoundCount() {
    return currentRoundCount
}

function genesisTimestamp() {
    return genesisTimestamp
}

function betPrice() {
    return betPrice
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getTweets(uint256 arg1) {
    return tweets[arg1]
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function getTweetsDiff(uint256 arg1) {
    return (tweets[arg1] - tweets[arg1 - 1])
}

function changeBetPrice(uint256 arg1) {
    require owner == msg.sender
    betPrice = arg1
}

function getInStake(uint256 arg1) {
    if arg1:
        return stor21[arg1]
    return stor21[stor11]
}

function changeURL(string arg1) {
    require owner == msg.sender
    stor6[] = Array(len=arg1.length, data=arg1[all])
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function getPrice() {
    if block.timestamp >= genesisTimestamp + (720 * 24 * 3600):
        return 255 * 10^14
    require block.timestamp - genesisTimestamp / 24 * 3600 < stor5.length
    return stor5[block.timestamp - stor9 / 24 * 3600]
}

function betting(uint256 arg1) payable {
    require msg.value >= betPrice
    require block.timestamp <= roundStartedTimestamp + (120 * 24 * 3600)
    betting[stor11][address(msg.sender)].field_256 = arg1
    betting[stor11][address(msg.sender)].field_0 = 1
    stor20[stor11][arg1]++
}

function _fallback() payable {
    if eth.balance(this.address) > 0:
        call stor14 with:
           value eth.balance(this.address) / 2 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call stor13 with:
           value eth.balance(this.address) / 2 wei
             gas 2300 * is_zero(value) wei
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function checkBetting(uint256 arg1, address arg2) {
    if currentRoundCount <= arg1:
        return 0
    if arg1 <= 0:
        return 0
    if tweets[arg1] - tweets[arg1 - 1] > 0:
        if tweets[arg1] - tweets[arg1 - 1] != betting[arg1][address(arg2)].field_256:
            return (tweets[arg1] - tweets[arg1 - 1] == betting[arg1][address(arg2)].field_256)
        return bool(betting[arg1][address(arg2)].field_0)
    if betting[arg1][address(arg2)].field_256:
        return 0
    if not betting[arg1][address(arg2)].field_0:
        return 0
    return 1
}

function initialClaesOffering() payable {
    if block.timestamp >= genesisTimestamp + (720 * 24 * 3600):
        require balanceOf[address(this.address)] >= msg.value / 255 * 10^14
        balanceOf[address(this.address)] -= msg.value / 255 * 10^14
        balanceOf[msg.sender] += msg.value / 255 * 10^14
        emit Transfer((msg.value / 255 * 10^14), this.address, msg.sender);
    else:
        require block.timestamp - genesisTimestamp / 24 * 3600 < stor5.length
        require stor5[block.timestamp - stor9 / 24 * 3600]
        require balanceOf[address(this.address)] >= msg.value / stor5[block.timestamp - stor9 / 24 * 3600]
        balanceOf[address(this.address)] -= msg.value / stor5[block.timestamp - stor9 / 24 * 3600]
        balanceOf[msg.sender] += msg.value / stor5[block.timestamp - stor9 / 24 * 3600]
        emit Transfer((msg.value / stor5[block.timestamp - stor9 / 24 * 3600]), this.address, msg.sender);
}

function winnerWithdraw(uint256 arg1) {
    if currentRoundCount > arg1:
        if arg1 > 0:
            if tweets[arg1] - tweets[arg1 - 1] > 0:
                if tweets[arg1] - tweets[arg1 - 1] == betting[arg1][address(msg.sender)].field_256:
                    if betting[arg1][address(msg.sender)].field_0:
                        if not betting[arg1][address(msg.sender)].field_8:
                            betting[arg1][address(msg.sender)].field_8 = 1
                            if tweets[arg1] - tweets[arg1 - 1] > 0:
                                require stor20[arg1][stor18[arg1] - stor18[arg1 - 1]]
                                if stor22[arg1]:
                                    balanceOf[address(msg.sender)] += tweets[arg1] - tweets[arg1 - 1] + stor21[arg1] / stor20[arg1][stor18[arg1] - stor18[arg1 - 1]]
                                else:
                                    stor22[arg1] = 1
                                    require stor20[arg1][stor18[arg1] - stor18[arg1 - 1]]
                                    balanceOf[address(msg.sender)] = (tweets[arg1] - tweets[arg1 - 1] + stor21[arg1] / stor20[arg1][stor18[arg1] - stor18[arg1 - 1]]) + (tweets[arg1] - tweets[arg1 - 1] + stor21[arg1] % stor20[arg1][stor18[arg1] - stor18[arg1 - 1]]) + balanceOf[address(msg.sender)]
                            else:
                                require stor20[arg1][0]
                                if stor22[arg1]:
                                    balanceOf[address(msg.sender)] += stor21[arg1] / stor20[arg1][0]
                                else:
                                    stor22[arg1] = 1
                                    require stor20[arg1][0]
                                    balanceOf[address(msg.sender)] = (stor21[arg1] / stor20[arg1][0]) + (stor21[arg1] % stor20[arg1][0]) + balanceOf[address(msg.sender)]
            else:
                if not betting[arg1][address(msg.sender)].field_256:
                    if betting[arg1][address(msg.sender)].field_0:
                        if not betting[arg1][address(msg.sender)].field_8:
                            betting[arg1][address(msg.sender)].field_8 = 1
                            if tweets[arg1] - tweets[arg1 - 1] > 0:
                                require stor20[arg1][stor18[arg1] - stor18[arg1 - 1]]
                                if stor22[arg1]:
                                    balanceOf[address(msg.sender)] += tweets[arg1] - tweets[arg1 - 1] + stor21[arg1] / stor20[arg1][stor18[arg1] - stor18[arg1 - 1]]
                                else:
                                    stor22[arg1] = 1
                                    require stor20[arg1][stor18[arg1] - stor18[arg1 - 1]]
                                    balanceOf[address(msg.sender)] = (tweets[arg1] - tweets[arg1 - 1] + stor21[arg1] / stor20[arg1][stor18[arg1] - stor18[arg1 - 1]]) + (tweets[arg1] - tweets[arg1 - 1] + stor21[arg1] % stor20[arg1][stor18[arg1] - stor18[arg1 - 1]]) + balanceOf[address(msg.sender)]
                            else:
                                require stor20[arg1][0]
                                if stor22[arg1]:
                                    balanceOf[address(msg.sender)] += stor21[arg1] / stor20[arg1][0]
                                else:
                                    stor22[arg1] = 1
                                    require stor20[arg1][0]
                                    balanceOf[address(msg.sender)] = (stor21[arg1] / stor20[arg1][0]) + (stor21[arg1] % stor20[arg1][0]) + balanceOf[address(msg.sender)]
}

function __callback(bytes32 arg1, string arg2) {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[0] = arg1
    mem[32] = 17
    require stor17[arg1]
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            mem[ceil32(arg2.length) + 128] = 11
            mem[ceil32(arg2.length) + 160] = 'eth_mainnet'
            mem[0] = 2
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
            if ext_call.return_data[12 len 20] != address(stor1):
                require ext_code.size(stor0)
                call stor0.getAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
            mem[ceil32(arg2.length) + 224] = 0
            require ext_code.size(address(stor1))
            call address(stor1).cbAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require msg.sender == ext_call.return_data[12 len 20]
            mem[64] = ceil32(arg2.length) + 224
            mem[ceil32(arg2.length) + 192] = 0
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                mem[ceil32(arg2.length) + 128] = 12
                mem[ceil32(arg2.length) + 160] = 'eth_ropsten3'
                mem[0] = 2
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
                if ext_call.return_data[12 len 20] != address(stor1):
                    require ext_code.size(stor0)
                    call stor0.getAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                mem[ceil32(arg2.length) + 224] = 0
                require ext_code.size(address(stor1))
                call address(stor1).cbAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require msg.sender == ext_call.return_data[12 len 20]
                mem[64] = ceil32(arg2.length) + 224
                mem[ceil32(arg2.length) + 192] = 0
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    mem[ceil32(arg2.length) + 128] = 9
                    mem[ceil32(arg2.length) + 160] = 'eth_kovan'
                    mem[0] = 2
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
                    if ext_call.return_data[12 len 20] != address(stor1):
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                    mem[ceil32(arg2.length) + 224] = 0
                    require ext_code.size(address(stor1))
                    call address(stor1).cbAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require msg.sender == ext_call.return_data[12 len 20]
                    mem[64] = ceil32(arg2.length) + 224
                    mem[ceil32(arg2.length) + 192] = 0
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
                        if ext_call.return_data[12 len 20] != address(stor1):
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                        mem[ceil32(arg2.length) + 160] = 0
                        require ext_code.size(address(stor1))
                        call address(stor1).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
                        mem[64] = ceil32(arg2.length) + 160
                        mem[ceil32(arg2.length) + 128] = 0
                    else:
                        stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        mem[ceil32(arg2.length) + 128] = 11
                        mem[ceil32(arg2.length) + 160] = 'eth_rinkeby'
                        mem[0] = 2
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
                        mem[ceil32(arg2.length) + 224] = 0
                        require ext_code.size(address(stor1))
                        call address(stor1).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
                        mem[64] = ceil32(arg2.length) + 224
                        mem[ceil32(arg2.length) + 192] = 0
    else:
        if ext_code.size(stor0):
            call stor0.getAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if ext_call.return_data[12 len 20] != address(stor1):
                require ext_code.size(stor0)
                call stor0.getAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
            mem[ceil32(arg2.length) + 160] = 0
            require ext_code.size(address(stor1))
            call address(stor1).cbAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require msg.sender == ext_call.return_data[12 len 20]
            mem[64] = ceil32(arg2.length) + 160
            mem[ceil32(arg2.length) + 128] = 0
        else:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                mem[ceil32(arg2.length) + 128] = 11
                mem[ceil32(arg2.length) + 160] = 'eth_mainnet'
                mem[0] = 2
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
                if ext_call.return_data[12 len 20] != address(stor1):
                    require ext_code.size(stor0)
                    call stor0.getAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                mem[ceil32(arg2.length) + 224] = 0
                require ext_code.size(address(stor1))
                call address(stor1).cbAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require msg.sender == ext_call.return_data[12 len 20]
                mem[64] = ceil32(arg2.length) + 224
                mem[ceil32(arg2.length) + 192] = 0
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    mem[ceil32(arg2.length) + 128] = 12
                    mem[ceil32(arg2.length) + 160] = 'eth_ropsten3'
                    mem[0] = 2
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
                    if ext_call.return_data[12 len 20] != address(stor1):
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                    mem[ceil32(arg2.length) + 224] = 0
                    require ext_code.size(address(stor1))
                    call address(stor1).cbAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require msg.sender == ext_call.return_data[12 len 20]
                    mem[64] = ceil32(arg2.length) + 224
                    mem[ceil32(arg2.length) + 192] = 0
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        mem[ceil32(arg2.length) + 128] = 9
                        mem[ceil32(arg2.length) + 160] = 'eth_kovan'
                        mem[0] = 2
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
                        if ext_call.return_data[12 len 20] != address(stor1):
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                        mem[ceil32(arg2.length) + 224] = 0
                        require ext_code.size(address(stor1))
                        call address(stor1).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
                        mem[64] = ceil32(arg2.length) + 224
                        mem[ceil32(arg2.length) + 192] = 0
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
                            if ext_call.return_data[12 len 20] != address(stor1):
                                require ext_code.size(stor0)
                                call stor0.getAddress() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                            mem[ceil32(arg2.length) + 160] = 0
                            require ext_code.size(address(stor1))
                            call address(stor1).cbAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require msg.sender == ext_call.return_data[12 len 20]
                            mem[64] = ceil32(arg2.length) + 160
                            mem[ceil32(arg2.length) + 128] = 0
                        else:
                            stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            mem[ceil32(arg2.length) + 128] = 11
                            mem[ceil32(arg2.length) + 160] = 'eth_rinkeby'
                            mem[0] = 2
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
                            mem[ceil32(arg2.length) + 224] = 0
                            require ext_code.size(address(stor1))
                            call address(stor1).cbAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require msg.sender == ext_call.return_data[12 len 20]
                            mem[64] = ceil32(arg2.length) + 224
                            mem[ceil32(arg2.length) + 192] = 0
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg2.length
        if Mask(8, 248, mem[idx + 128]) >= '0':
            if Mask(8, 248, mem[idx + 128]) <= '9':
                require idx < arg2.length
                idx = idx + 1
                s = (10 * s) + mem[idx + 128 len 1] - 48
                continue 
        idx = idx + 1
        s = s
        continue 
    if s - tweets[stor11 - 1] > 0:
        if stor20[stor11][s - stor18[stor11 - 1]] <= 0:
            stor21[stor11 + 1] = s - tweets[stor11 - 1] + stor21[stor11]
        else:
            stor21[stor11 + 1] = 0
            totalSupply += stor21[stor11]
    else:
        if stor20[stor11][0] > 0:
            stor21[stor11 + 1] = 0
            totalSupply += stor21[stor11]
    roundStartedTimestamp += 168 * 24 * 3600
    tweets[stor11] = s
    currentRoundCount++
}



}
