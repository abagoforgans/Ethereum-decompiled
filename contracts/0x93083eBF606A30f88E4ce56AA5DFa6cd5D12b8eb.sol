contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint8 stor2;
address stor2; offset 8
address stor3;

function _fallback() payable {
    stor0 = 3904999
    stor1 = 4192999
    uint8(stor2.field_0) = 1
    address(stor2.field_8) = 0x2b7913fcc943783b04d6dfbbb9ff9ca9eb59caee
    stor3 = 0x9ddf42e70313a0125ca964ff394cffd1f005d249
    require not msg.value
    require address(stor2.field_8)
    require stor3
    require stor1 > stor0
    return code.data[402 len 6822]
}



// =====================  Runtime code  =====================


const name = Array(len=40, data='preICO seed 1 ICO Unicorns . WOR', uint64('LD Token'))

const decimals = 18

const tokenCreationCap = 60000000 * 10^18

const symbol = 'ICOU'

const tokenCreationMin = 1000 * 10^18

const tokenCreationRate = 1000

const sub_ff48b88a(?) = Array(len=138, data=0x526567756c6174696f6e73206172652070726573656e74206174207765627369, 0x74652049434f20556e69636f726e73202e20574f524c44206279207573696e67207468697320736d617274636f6e747261637420796f7520636f6d6d697420616c736f207468617420796f752061636365707420616e6420666f6c6c6f772074686f73652072756c6500, mem[298 len 22] >> 512, mem[406 len 10])


uint256 fundingStartBlock;
uint256 fundingEndBlock;
uint8 stor2;
address sub_b18da9bdAddress; offset 8
address migrationMasterAddress;
uint256 totalSupply;
uint256 stor5;
mapping of uint256 balanceOf;
mapping of uint256 stor7;
address migrationAgentAddress;
uint256 totalMigrated;

function totalSupply() {
    return totalSupply
}

function migrationMaster() {
    return migrationMasterAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function migrationAgent() {
    return migrationAgentAddress
}

function fundingEndBlock() {
    return fundingEndBlock
}

function totalMigrated() {
    return totalMigrated
}

function sub_b18da9bd(?) {
    return sub_b18da9bdAddress
}

function funding() {
    return bool(stor2)
}

function fundingStartBlock() {
    return fundingStartBlock
}

function setMigrationMaster(address arg1) {
    require msg.sender == migrationMasterAddress
    require arg1
    migrationMasterAddress = arg1
}

function setMigrationAgent(address arg1) {
    require not stor2
    require not migrationAgentAddress
    require msg.sender == migrationMasterAddress
    migrationAgentAddress = arg1
}

function sub_4a262fa8(?) {
    require totalSupply >= 1000 * 10^18
    call sub_b18da9bdAddress with:
       value eth.balance(this.address) - 10^18 wei
         gas 2300 * is_zero(value) wei
}

function sub_f3c2ae7e(?) {
    require eth.balance(this.address) >= 5 * 10^18
    call sub_b18da9bdAddress with:
       value eth.balance(this.address) - 2 * 10^18 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    require not stor2
    if migrationMasterAddress != msg.sender:
        require block.number >= fundingEndBlock + 320000
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function refund() {
    require stor2
    require block.number > fundingEndBlock
    require totalSupply < 1000 * 10^18
    require stor7[address(msg.sender)]
    stor7[address(msg.sender)] = 0
    totalSupply -= balanceOf[address(msg.sender)]
    emit Refund((stor7[address(msg.sender)] / 1000), msg.sender);
    call msg.sender with:
       value stor7[address(msg.sender)] / 1000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function refundTRA() {
    require stor2
    require block.number > fundingEndBlock
    require totalSupply < 1000 * 10^18
    require stor7[address(msg.sender)]
    stor7[address(msg.sender)] = 0
    totalSupply -= balanceOf[address(msg.sender)]
    emit Refund((stor7[address(msg.sender)] / 1000), msg.sender);
    call msg.sender with:
       value stor7[address(msg.sender)] / 1000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function finalize() {
    require stor2
    require totalSupply >= 1000 * 10^18
    if totalSupply < 60000000 * 10^18:
        require block.number > fundingEndBlock
    stor2 = 0
    totalSupply += 14 * totalSupply / 100
    balanceOf[stor3] += 14 * totalSupply / 100
    emit Transfer((14 * totalSupply / 100), 0, migrationMasterAddress);
    call sub_b18da9bdAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function migrate(uint256 arg1) {
    require not stor2
    require migrationAgentAddress
    require arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    totalMigrated += arg1
    require ext_code.size(migrationAgentAddress)
    call migrationAgentAddress.migrateFrom(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    emit Migrate(arg1, msg.sender, migrationAgentAddress);
}

function sub_a5c92707(?) payable {
    require stor2
    require block.number >= fundingStartBlock
    require block.number <= fundingEndBlock
    require msg.value
    require block.number >= fundingStartBlock
    stor5 = 1000
    if eth.balance(this.address) >= 120 * 10^18:
        if block.number < fundingStartBlock + 49071:
            stor5 += 200
        if block.number < fundingStartBlock + (20 * 3600):
            stor5 += 100
        if msg.value > 50 * 10^18:
            stor5 += 30
            if msg.value > 100 * 10^18:
                stor5 += 20
                if msg.value > 200 * 10^18:
                    stor5 += 50
                    if msg.value > 300 * 10^18:
                        stor5 += 50
                        if msg.value > 500 * 10^18:
                            stor5 += 50
                            if msg.value > 1000 * 10^18:
                                stor5 += 50
                                if msg.value > 2000 * 10^18:
                                    stor5 += 50
                                    if msg.value > 3000 * 10^18:
                                        stor5 += 50
                                        if msg.value > 5000 * 10^18:
                                            stor5 += 50
                                            if msg.value > 7000 * 10^18:
                                                stor5 += 50
                                                if msg.value > 10000 * 10^18:
                                                    stor5 += 50
    else:
        if totalSupply < 276000 * 10^18:
            stor5 = 1500
        if block.number < fundingStartBlock + 49071:
            stor5 += 200
        if block.number < fundingStartBlock + (20 * 3600):
            stor5 += 100
        if msg.value > 50 * 10^18:
            stor5 += 30
            if msg.value > 100 * 10^18:
                stor5 += 20
                if msg.value > 200 * 10^18:
                    stor5 += 50
                    if msg.value > 300 * 10^18:
                        stor5 += 50
                        if msg.value > 500 * 10^18:
                            stor5 += 50
                            if msg.value > 1000 * 10^18:
                                stor5 += 50
                                if msg.value > 2000 * 10^18:
                                    stor5 += 50
                                    if msg.value > 3000 * 10^18:
                                        stor5 += 50
                                        if msg.value > 5000 * 10^18:
                                            stor5 += 50
                                            if msg.value > 7000 * 10^18:
                                                stor5 += 50
                                                if msg.value > 10000 * 10^18:
                                                    stor5 += 50
    totalSupply += msg.value * stor5
    balanceOf[address(arg1)] += msg.value * stor5
    stor7[address(arg1)] += 1000 * msg.value
    emit Transfer((msg.value * stor5), 0, arg1);
}

function _fallback() payable {
    if stor2:
        require stor2
        require block.number >= fundingStartBlock
        require block.number <= fundingEndBlock
        require msg.value
        require block.number >= fundingStartBlock
        stor5 = 1000
        if eth.balance(this.address) >= 120 * 10^18:
            if block.number < fundingStartBlock + 49071:
                stor5 += 200
            if block.number < fundingStartBlock + (20 * 3600):
                stor5 += 100
            if msg.value > 50 * 10^18:
                stor5 += 30
                if msg.value > 100 * 10^18:
                    stor5 += 20
                    if msg.value > 200 * 10^18:
                        stor5 += 50
                        if msg.value > 300 * 10^18:
                            stor5 += 50
                            if msg.value > 500 * 10^18:
                                stor5 += 50
                                if msg.value > 1000 * 10^18:
                                    stor5 += 50
                                    if msg.value > 2000 * 10^18:
                                        stor5 += 50
                                        if msg.value > 3000 * 10^18:
                                            stor5 += 50
                                            if msg.value > 5000 * 10^18:
                                                stor5 += 50
                                                if msg.value > 7000 * 10^18:
                                                    stor5 += 50
                                                    if msg.value > 10000 * 10^18:
                                                        stor5 += 50
        else:
            if totalSupply < 276000 * 10^18:
                stor5 = 1500
            if block.number < fundingStartBlock + 49071:
                stor5 += 200
            if block.number < fundingStartBlock + (20 * 3600):
                stor5 += 100
            if msg.value > 50 * 10^18:
                stor5 += 30
                if msg.value > 100 * 10^18:
                    stor5 += 20
                    if msg.value > 200 * 10^18:
                        stor5 += 50
                        if msg.value > 300 * 10^18:
                            stor5 += 50
                            if msg.value > 500 * 10^18:
                                stor5 += 50
                                if msg.value > 1000 * 10^18:
                                    stor5 += 50
                                    if msg.value > 2000 * 10^18:
                                        stor5 += 50
                                        if msg.value > 3000 * 10^18:
                                            stor5 += 50
                                            if msg.value > 5000 * 10^18:
                                                stor5 += 50
                                                if msg.value > 7000 * 10^18:
                                                    stor5 += 50
                                                    if msg.value > 10000 * 10^18:
                                                        stor5 += 50
        totalSupply += msg.value * stor5
        balanceOf[address(msg.sender)] += msg.value * stor5
        stor7[address(msg.sender)] += 1000 * msg.value
        emit Transfer((msg.value * stor5), 0, msg.sender);
}



}
