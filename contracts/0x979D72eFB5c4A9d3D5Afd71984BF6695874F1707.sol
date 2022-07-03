contract main {




// =====================  Runtime code  =====================


#
#  - sub_796b5e37(?)
#  - createGOP(address arg1, string arg2)
#
bool stor0; offset 256
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 16
uint256 stor0; offset 8
address owner;
address stor102;
address stor103;
uint256 stor103;
array of uint256 stor104;
uint8 stor107;
uint256 stor108;
array of struct stor110;
address stor111;
mapping of struct bidOfBidder;
mapping of uint256 horsesRemaining;
array of struct stor115;
mapping of struct stor116;
mapping of uint256 stor117;
uint256 stor169C;
uint256 stor2784;
uint256 stor407A;
uint256 stor6975;
uint256 stor7184;
uint256 stor77CE;
uint256 stor8F74;
uint256 storAE4F;
uint256 storC44B;
uint256 storFB30;

function bidOfBidder(address arg1, uint256 arg2) {
    return bidOfBidder[arg2][9][address(arg1)].field_0
}

function owner() {
    return owner
}

function horsesRemaining(uint256 arg1) {
    return horsesRemaining[arg1]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function isABatchOpen() {
    return bool(stor107), stor108
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function closeBatch() {
    require msg.sender == owner
    stor107 = 0
    stor108 = 0
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function openBatch(uint256 arg1) {
    require msg.sender == owner
    if arg1 < 1:
        revert with 0, 'Gen not recognized'
    if arg1 > 10:
        revert with 0, 'Gen not recognized'
    require msg.sender == owner
    stor107 = 0
    stor108 = 0
    stor107 = 1
    stor108 = arg1
}

function initialize(address arg1) {
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    owner = arg1
    uint8(stor0.field_0) = 1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    Mask(240, 0, stor0.field_16) = 0
    stor0.field_256 % 1 = 0
    stor0.field_256 % 1 = 0
}

function createRandomHorseFor(address arg1, string arg2, uint256 arg3) {
    require msg.sender == owner
    if not horsesRemaining[arg3]:
        revert with 0, 'Limit for genotype reached'
    require ext_code.size(stor111)
    call stor111.0x813051bc with:
         gas gas_remaining wei
        args address(arg1), Array(len=arg2.length, data=arg2[all]), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 <= horsesRemaining[arg3]
    horsesRemaining[arg3]--
    return ext_call.return_data[0]
}

function closeAuction(uint256 arg1) {
    require msg.sender == owner
    require 1 <= stor110.length
    require stor110.length - 1 < stor110.length
    require stor117[arg1] < stor110.length
    stor110[stor117[arg1]].field_0 = stor110[stor110.length].field_0
    require stor110.length - 1 < stor110.length
    stor110[stor110.length].field_0 = 0
    stor110.length--
    if stor110.length > stor110.length - 1:
        idx = stor110.length - 1
        while stor110.length > idx:
            stor110[idx].field_0 = 0
            idx = idx + 1
            continue 
    bidOfBidder[arg1].field_1792 = 0
}

function createCustomHorse(address arg1, string arg2, uint256 arg3, bytes32 arg4) {
    require msg.sender == owner
    if not horsesRemaining[arg3]:
        revert with 0, 'Limit for genotype reached'
    require ext_code.size(stor111)
    call stor111.0x487ff569 with:
         gas gas_remaining wei
        args address(arg1), Array(len=arg2.length, data=arg2[all]), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 <= horsesRemaining[arg3]
    horsesRemaining[arg3]--
    return ext_call.return_data[0]
}

function auctionInformation(uint256 arg1) {
    if bidOfBidder[arg1].field_1536:
        idx = 704
        s = 0
        while (32 * bidOfBidder[arg1].field_1536) + 672 > idx:
            mem[idx + 32] = bidOfBidder[arg1][s + 6].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = (32 * bidOfBidder[arg1].field_1536) + 736
    s = 0
    while (32 * bidOfBidder[arg1].field_1536) + bidOfBidder[arg1][8].length + 704 > idx:
        mem[idx + 32] = bidOfBidder[arg1][s + 8].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return bidOfBidder[arg1].field_0, 
           bidOfBidder[arg1].field_512,
           bidOfBidder[arg1].field_768,
           bidOfBidder[arg1].field_1536,
           bidOfBidder[arg1].field_256,
           bidOfBidder[arg1].field_1024,
           bool(bidOfBidder[arg1].field_1792)
}

function getOpenAuctions() {
    if not stor110.length:
        mem[(32 * stor110.length) + 128] = 32
        mem[(32 * stor110.length) + 160] = stor110.length
        mem[(32 * stor110.length) + 192 len floor32(stor110.length)] = mem[128 len floor32(stor110.length)]
        return memory
          from (32 * stor110.length) + 128
           len (96 * stor110.length) + 64
    mem[128] = uint256(stor110.field_0)
    idx = 128
    s = 0
    while (32 * stor110.length) + 96 > idx:
        mem[idx + 32] = stor110[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor110.length) + 192 len floor32(stor110.length)] = mem[128 len floor32(stor110.length)]
    return Array(len=stor110.length, data=mem[128 len floor32(stor110.length)], mem[(32 * stor110.length) + floor32(stor110.length) + 192 len (32 * stor110.length) - floor32(stor110.length)]), 
}

function initialize(address arg1, address arg2) {
    if uint8(stor0.field_8):
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        if not uint8(stor0.field_8):
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    owner = arg2
    uint8(stor0.field_0) = 1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    Mask(240, 0, stor0.field_16) = 0
    stor0.field_256 % 1 = 0
    stor0.field_256 % 1 = 0
    stor111 = arg1
    stor169C = 1000
    stor407A = 1000
    storC44B = 1000
    storFB30 = 1000
    stor77CE = 2000
    stor8F74 = 3000
    stor7184 = 4000
    storAE4F = 6000
    stor6975 = 9000
    stor2784 = 10000
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function bid(uint256 arg1) payable {
    if not bidOfBidder[arg1].field_1792:
        revert with 0, 'Auction not open'
    require msg.value + bidOfBidder[arg1][9][msg.sender].field_0 >= bidOfBidder[arg1][9][msg.sender].field_0
    if msg.value + bidOfBidder[arg1][9][msg.sender].field_0 <= bidOfBidder[arg1].field_256:
        revert with 0, 'Bid lower than maximum bid'
    if not bidOfBidder[arg1].field_1536:
        if msg.value < bidOfBidder[arg1].field_512:
            revert with 0, 'Bid lower than minimum'
    bidOfBidder[arg1][9][msg.sender].field_0 += msg.value
    if not bidOfBidder[arg1][10][msg.sender].field_0:
        bidOfBidder[arg1].field_1536++
        stor[bidOfBidder[arg1].field_1536 + ('array', 6, ('map', ('param', 'arg1'), ('name', 'bidOfBidder', 112)))].field_0 = msg.sender or Mask(96, 160, stor[bidOfBidder[arg1].field_1536 + ('array', 6, ('map', ('param', 'arg1'), ('name', 'bidOfBidder', 112)))].field_0)
        bidOfBidder[arg1][10][msg.sender].field_0 = 1
        stor115[msg.sender].field_0++
        stor115[msg.sender][stor115[msg.sender].field_0].field_0 = arg1
    bidOfBidder[arg1].field_256 = msg.value + bidOfBidder[arg1][9][msg.sender].field_0
    bidOfBidder[arg1].field_1024 = msg.sender or Mask(96, 160, bidOfBidder[arg1].field_1024)
    emit LogGOPBid(msg.sender, msg.value + bidOfBidder[arg1][9][msg.sender].field_0);
}

function getAuctionsFor(address arg1) {
    if stor116[address(arg1)].field_0:
        mem[128] = stor116[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * stor116[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = stor116[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if stor115[address(arg1)].field_0:
        mem[(32 * stor116[address(arg1)].field_0) + 160] = stor115[address(arg1)].field_0
        idx = (32 * stor116[address(arg1)].field_0) + 160
        s = 0
        while (32 * stor116[address(arg1)].field_0) + (32 * stor115[address(arg1)].field_0) + 128 > idx:
            mem[idx + 32] = stor115[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor116[address(arg1)].field_0) + (32 * stor115[address(arg1)].field_0) + 256 len floor32(stor116[address(arg1)].field_0)] = mem[128 len floor32(stor116[address(arg1)].field_0)]
    mem[(64 * stor116[address(arg1)].field_0) + (32 * stor115[address(arg1)].field_0) + 256] = stor115[address(arg1)].field_0
    mem[(64 * stor116[address(arg1)].field_0) + (32 * stor115[address(arg1)].field_0) + 288 len floor32(stor115[address(arg1)].field_0)] = mem[(32 * stor116[address(arg1)].field_0) + 160 len floor32(stor115[address(arg1)].field_0)]
    return Array(len=stor116[address(arg1)].field_0, data=mem[128 len floor32(stor116[address(arg1)].field_0)], mem[(32 * stor116[address(arg1)].field_0) + (32 * stor115[address(arg1)].field_0) + floor32(stor116[address(arg1)].field_0) + 256 len (32 * stor116[address(arg1)].field_0) + (32 * stor115[address(arg1)].field_0) + -floor32(stor116[address(arg1)].field_0) + 32]), 
           (32 * stor116[address(arg1)].field_0) + 96
}

function claim(uint256 arg1) {
    if bidOfBidder[arg1].field_1792:
        revert with 0, 'Auction still open'
    if msg.sender == bidOfBidder[arg1].field_1024:
        require ext_code.size(stor111)
        call stor111.0x42842e0e with:
             gas gas_remaining wei
            args this.address, msg.sender, bidOfBidder[arg1].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        bidOfBidder[arg1].field_1024 = 0
    if owner != msg.sender:
        if bidOfBidder[arg1].field_1024 != msg.sender:
            if owner != msg.sender:
                call msg.sender with:
                   value bidOfBidder[arg1][9][msg.sender].field_0 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                bidOfBidder[arg1][9][msg.sender].field_0 = 0
        emit LogGOPClaim(msg.sender);
    else:
        if not bidOfBidder[arg1].field_1536:
            require ext_code.size(stor111)
            call stor111.0x42842e0e with:
                 gas gas_remaining wei
                args this.address, msg.sender, bidOfBidder[arg1].field_768
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            call msg.sender with:
               value bidOfBidder[arg1].field_256 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            bidOfBidder[arg1].field_256 = 0
            if bidOfBidder[arg1].field_1024 != msg.sender:
                if owner != msg.sender:
                    call msg.sender with:
                       value bidOfBidder[arg1][9][msg.sender].field_0 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    bidOfBidder[arg1][9][msg.sender].field_0 = 0
            emit LogGOPClaim(msg.sender);
    return 1
}

function getQueryPrice() {
    if not stor102:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor102 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor104.length) = 0
            stor104.length.field_1 = 11
            stor104.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor104.length + 31 / 32 > idx:
                stor104[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor102 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor104.length) = 0
                stor104.length.field_1 = 12
                stor104.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor104.length + 31 / 32 > idx:
                    stor104[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor102 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor104.length) = 0
                    stor104.length.field_1 = 9
                    stor104.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor104.length + 31 / 32 > idx:
                        stor104[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor102 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor102 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor102 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                    else:
                        stor102 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        bool(stor104.length) = 0
                        stor104.length.field_1 = 11
                        stor104.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor104.length + 31 / 32 > idx:
                            stor104[idx].field_0 = 0
                            idx = idx + 1
                            continue 
        require ext_code.size(stor102)
    else:
        if not ext_code.size(stor102):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor102 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor104.length) = 0
                stor104.length.field_1 = 11
                stor104.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor104.length + 31 / 32 > idx:
                    stor104[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor102 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor104.length) = 0
                    stor104.length.field_1 = 12
                    stor104.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor104.length + 31 / 32 > idx:
                        stor104[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor102 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor104.length) = 0
                        stor104.length.field_1 = 9
                        stor104.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor104.length + 31 / 32 > idx:
                            stor104[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor102 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor102 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor102 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        else:
                            stor102 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor104.length) = 0
                            stor104.length.field_1 = 11
                            stor104.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor104.length + 31 / 32 > idx:
                                stor104[idx].field_0 = 0
                                idx = idx + 1
                                continue 
            require ext_code.size(stor102)
    call stor102.getAddress() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != address(stor103):
        require ext_code.size(stor102)
        call stor102.getAddress() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        uint256(stor103) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor103))
    require ext_code.size(address(stor103))
    call address(stor103).getPrice(string arg1) with:
         gas gas_remaining wei
        args 'URL'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function __callback(bytes32 arg1, string arg2) {
    mem[64] = ceil32(arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    if not stor102:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor102 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            mem[64] = ceil32(arg2.length) + 192
            mem[ceil32(arg2.length) + 128] = 11
            mem[ceil32(arg2.length) + 160] = 'eth_mainnet'
            mem[0] = 104
            bool(stor104.length) = 0
            stor104.length.field_1 = 11
            stor104.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor104.length + 31 / 32 > idx:
                stor104[idx].field_0 = 0
                idx = idx + 1
                continue 
            require ext_code.size(stor102)
            call stor102.getAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != address(stor103):
                require ext_code.size(stor102)
                call stor102.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor103) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor103))
            require ext_code.size(address(stor103))
            call address(stor103).cbAddress() with:
                 gas gas_remaining wei
            mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor102 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                mem[64] = ceil32(arg2.length) + 192
                mem[ceil32(arg2.length) + 128] = 12
                mem[ceil32(arg2.length) + 160] = 'eth_ropsten3'
                mem[0] = 104
                bool(stor104.length) = 0
                stor104.length.field_1 = 12
                stor104.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor104.length + 31 / 32 > idx:
                    stor104[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor102)
                call stor102.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != address(stor103):
                    require ext_code.size(stor102)
                    call stor102.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor103) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor103))
                require ext_code.size(address(stor103))
                call address(stor103).cbAddress() with:
                     gas gas_remaining wei
                mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor102 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    mem[64] = ceil32(arg2.length) + 192
                    mem[ceil32(arg2.length) + 128] = 9
                    mem[ceil32(arg2.length) + 160] = 'eth_kovan'
                    mem[0] = 104
                    bool(stor104.length) = 0
                    stor104.length.field_1 = 9
                    stor104.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor104.length + 31 / 32 > idx:
                        stor104[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor102)
                    call stor102.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20] != address(stor103):
                        require ext_code.size(stor102)
                        call stor102.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor103) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor103))
                    require ext_code.size(address(stor103))
                    call address(stor103).cbAddress() with:
                         gas gas_remaining wei
                    mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor102 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor102 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor102 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        require ext_code.size(stor102)
                        call stor102.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] != address(stor103):
                            require ext_code.size(stor102)
                            call stor102.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            uint256(stor103) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor103))
                        require ext_code.size(address(stor103))
                        call address(stor103).cbAddress() with:
                             gas gas_remaining wei
                        mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
                    else:
                        stor102 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        mem[64] = ceil32(arg2.length) + 192
                        mem[ceil32(arg2.length) + 128] = 11
                        mem[ceil32(arg2.length) + 160] = 'eth_rinkeby'
                        mem[0] = 104
                        bool(stor104.length) = 0
                        stor104.length.field_1 = 11
                        stor104.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor104.length + 31 / 32 > idx:
                            stor104[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor102)
                        call stor102.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] != address(stor103):
                            require ext_code.size(stor102)
                            call stor102.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            uint256(stor103) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor103))
                        require ext_code.size(address(stor103))
                        call address(stor103).cbAddress() with:
                             gas gas_remaining wei
                        mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
    else:
        if ext_code.size(stor102):
            call stor102.getAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != address(stor103):
                require ext_code.size(stor102)
                call stor102.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor103) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor103))
            require ext_code.size(address(stor103))
            call address(stor103).cbAddress() with:
                 gas gas_remaining wei
            mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
        else:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor102 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                mem[64] = ceil32(arg2.length) + 192
                mem[ceil32(arg2.length) + 128] = 11
                mem[ceil32(arg2.length) + 160] = 'eth_mainnet'
                mem[0] = 104
                bool(stor104.length) = 0
                stor104.length.field_1 = 11
                stor104.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor104.length + 31 / 32 > idx:
                    stor104[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor102)
                call stor102.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != address(stor103):
                    require ext_code.size(stor102)
                    call stor102.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor103) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor103))
                require ext_code.size(address(stor103))
                call address(stor103).cbAddress() with:
                     gas gas_remaining wei
                mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor102 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    mem[64] = ceil32(arg2.length) + 192
                    mem[ceil32(arg2.length) + 128] = 12
                    mem[ceil32(arg2.length) + 160] = 'eth_ropsten3'
                    mem[0] = 104
                    bool(stor104.length) = 0
                    stor104.length.field_1 = 12
                    stor104.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor104.length + 31 / 32 > idx:
                        stor104[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor102)
                    call stor102.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20] != address(stor103):
                        require ext_code.size(stor102)
                        call stor102.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor103) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor103))
                    require ext_code.size(address(stor103))
                    call address(stor103).cbAddress() with:
                         gas gas_remaining wei
                    mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor102 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        mem[64] = ceil32(arg2.length) + 192
                        mem[ceil32(arg2.length) + 128] = 9
                        mem[ceil32(arg2.length) + 160] = 'eth_kovan'
                        mem[0] = 104
                        bool(stor104.length) = 0
                        stor104.length.field_1 = 9
                        stor104.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor104.length + 31 / 32 > idx:
                            stor104[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor102)
                        call stor102.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] != address(stor103):
                            require ext_code.size(stor102)
                            call stor102.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            uint256(stor103) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor103))
                        require ext_code.size(address(stor103))
                        call address(stor103).cbAddress() with:
                             gas gas_remaining wei
                        mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor102 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor102 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor102 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                            require ext_code.size(stor102)
                            call stor102.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[12 len 20] != address(stor103):
                                require ext_code.size(stor102)
                                call stor102.getAddress() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                uint256(stor103) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor103))
                            require ext_code.size(address(stor103))
                            call address(stor103).cbAddress() with:
                                 gas gas_remaining wei
                            mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
                        else:
                            stor102 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            mem[64] = ceil32(arg2.length) + 192
                            mem[ceil32(arg2.length) + 128] = 11
                            mem[ceil32(arg2.length) + 160] = 'eth_rinkeby'
                            mem[0] = 104
                            bool(stor104.length) = 0
                            stor104.length.field_1 = 11
                            stor104.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor104.length + 31 / 32 > idx:
                                stor104[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor102)
                            call stor102.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[12 len 20] != address(stor103):
                                require ext_code.size(stor102)
                                call stor102.getAddress() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                uint256(stor103) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor103))
                            require ext_code.size(address(stor103))
                            call address(stor103).cbAddress() with:
                                 gas gas_remaining wei
                            mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not oraclize'
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
    require 1 <= stor110.length
    require stor110.length - 1 < stor110.length
    require stor117[s] < stor110.length
    stor110[stor117[s]].field_0 = stor110[stor110.length].field_0
    require stor110.length - 1 < stor110.length
    stor110[stor110.length].field_0 = 0
    stor110.length--
    if stor110.length > stor110.length - 1:
        idx = stor110.length - 1
        while stor110.length > idx:
            stor110[idx].field_0 = 0
            idx = idx + 1
            continue 
    bidOfBidder[s].field_1792 = 0
}



}
