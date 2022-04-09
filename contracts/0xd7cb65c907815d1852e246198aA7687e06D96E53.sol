contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint8 stor2;
address stor2; offset 24
uint256 stor2; offset 16
uint256 stor2; offset 8
address stor3;
address stor4;
address stor9;

function _fallback() payable {
    stor0 = 3963610
    stor1 = stor0 + (140 * 3600)
    uint8(stor2.field_0) = 1
    Mask(248, 0, stor2.field_8) = 0
    Mask(240, 0, stor2.field_16) = 0
    address(stor2.field_24) = 0xf03e8e4cbb2865fcc5a02b61cfccf86e9ae021b5
    stor3 = 0x13746d9489f7e56f6d2d8676086577297fc0b492
    stor4 = 0x8585d5a25b1fa2a0e6c3bcfc098195bac9789be2
    stor9 = 0x8585d5a25b1fa2a0e6c3bcfc098195bac9789be2
    require not msg.value
    require address(stor2.field_24)
    require stor4
    require stor1 > stor0
    return code.data[638 len 6356]
}



// =====================  Runtime code  =====================


const name = Array(len=39, data='preICO seed for Honestis.Network', ' on ETH' % 72057594037927936)

const preICOregulations = Array(len=149, data=0x526567756c6174696f6e73206f662070726549434f206172652070726573656e, 0x7420617420776562736974652020686f6e65737469732e6e6574776f726b20616e64206279207573696e67207468697320736d617274636f6e747261637420796f7520636f6d6d6974207468617420796f752061636365707420616e642077696c6c20666f6c6c6f772074686f73652072756c6500, mem[309 len 11] >> 512, Mask(168, -768, mem[309 len 11]) << 768)

const token3MstepCAP = 10287500 * 10^18

const decimals = 18

const tokenCreationMinConversion = 1000 * 10^18

const oneday = 5136

const onehour = 214

const tokenCreationCap = 66200000 * 10^18

const symbol = 'HNT'

const token10MstepCAP = (896875 * 10^16 * 3600)

const oneweek = (10 * 3600)

const tokenCreationRate = 1000

const tokenSEEDcap = 287500 * 10^18


uint256 fundingStartBlock;
uint256 fundingEndBlock;
uint8 stor2;
uint8 stor2; offset 8
uint8 stor2; offset 16
address honestisFortAddress; offset 24
uint256 stor2; offset 16
uint256 stor2; offset 8
address honestisFortbackupAddress;
address migrationMasterAddress;
uint256 totalSupply;
uint256 stor6;
mapping of uint256 balanceOf;
mapping of uint256 stor8;
address migrationAgentAddress;
uint256 totalMigrated;

function honestisFort() {
    return honestisFortAddress
}

function totalSupply() {
    return totalSupply
}

function honestisFortbackup() {
    return honestisFortbackupAddress
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

function funding() {
    return bool(uint8(stor2.field_0))
}

function fundingStartBlock() {
    return fundingStartBlock
}

function refundstate() {
    return bool(uint8(stor2.field_8))
}

function migratestate() {
    return bool(uint8(stor2.field_16))
}

function turnrefund() {
    require msg.sender == honestisFortAddress
    Mask(248, 0, stor2.field_8) = Mask(248, 0, not bool(uint8(stor2.field_8)))
}

function turnmigrate() {
    require msg.sender == migrationMasterAddress
    Mask(240, 0, stor2.field_16) = Mask(240, 0, not bool(uint8(stor2.field_16)))
}

function Partial23Transfer() {
    call honestisFortAddress with:
       value eth.balance(this.address) - 10^18 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function Partial23Send() {
    require msg.sender == honestisFortAddress
    call honestisFortAddress with:
       value eth.balance(this.address) - 10^18 wei
         gas 2300 * is_zero(value) wei
}

function finalizebackup() {
    require block.number > fundingEndBlock + (10 * 3600)
    uint8(stor2.field_0) = 0
    call honestisFortbackupAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    if migrationMasterAddress != msg.sender:
        require block.number >= fundingEndBlock + 73000
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function refundTRA() {
    require uint8(stor2.field_8)
    require stor8[address(msg.sender)]
    stor8[address(msg.sender)] = 0
    totalSupply -= balanceOf[address(msg.sender)]
    emit Refund((stor8[address(msg.sender)] / 1000), msg.sender);
    call msg.sender with:
       value stor8[address(msg.sender)] / 1000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function migrate(uint256 arg1) {
    require not uint8(stor2.field_16)
    require arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    totalMigrated += arg1
    require ext_code.size(migrationAgentAddress)
    call migrationAgentAddress.migrateFrom(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args msg.sender, arg1
    require ext_call.success
    emit Migrate(arg1, msg.sender, migrationAgentAddress);
}

function createHNtokens(address arg1) payable {
    require uint8(stor2.field_0)
    require block.number >= fundingStartBlock
    require block.number <= fundingEndBlock
    require msg.value
    require msg.value <= -totalSupply + 66200000 * 10^18 / 1000
    stor6 = 1000
    if totalSupply < 287500 * 10^18:
        stor6 = 1500
    if block.number <= fundingStartBlock + 226272:
        if block.number < fundingStartBlock + (50 * 3600):
            stor6 += 800 * fundingStartBlock + -block.number + (50 * 3600) / 50 * 3600
    else:
        stor6 = 800
        if totalSupply <= 10287500 * 10^18:
            if block.number < fundingStartBlock + (50 * 3600):
                stor6 += 800 * fundingStartBlock + -block.number + (50 * 3600) / 50 * 3600
        else:
            stor6 = 700
            if totalSupply > 896875 * 10^16 * 3600:
                stor6 = 750
            if block.number < fundingStartBlock + (50 * 3600):
                stor6 += 800 * fundingStartBlock + -block.number + (50 * 3600) / 50 * 3600
    totalSupply += msg.value * stor6
    balanceOf[address(arg1)] += msg.value * stor6
    stor8[address(arg1)] += 1000 * msg.value
    emit Transfer((msg.value * stor6), 0, arg1);
    totalSupply += 14 * msg.value * stor6 / 100
    balanceOf[stor4] += 14 * msg.value * stor6 / 100
    emit Transfer((14 * msg.value * stor6 / 100), 0, migrationMasterAddress);
}

function _fallback() payable {
    if uint8(stor2.field_0):
        require uint8(stor2.field_0)
        require block.number >= fundingStartBlock
        require block.number <= fundingEndBlock
        require msg.value
        require msg.value <= -totalSupply + 66200000 * 10^18 / 1000
        stor6 = 1000
        if totalSupply < 287500 * 10^18:
            stor6 = 1500
        if block.number <= fundingStartBlock + 226272:
            if block.number < fundingStartBlock + (50 * 3600):
                stor6 += 800 * fundingStartBlock + -block.number + (50 * 3600) / 50 * 3600
        else:
            stor6 = 800
            if totalSupply <= 10287500 * 10^18:
                if block.number < fundingStartBlock + (50 * 3600):
                    stor6 += 800 * fundingStartBlock + -block.number + (50 * 3600) / 50 * 3600
            else:
                stor6 = 700
                if totalSupply > 896875 * 10^16 * 3600:
                    stor6 = 750
                if block.number < fundingStartBlock + (50 * 3600):
                    stor6 += 800 * fundingStartBlock + -block.number + (50 * 3600) / 50 * 3600
        totalSupply += msg.value * stor6
        balanceOf[address(msg.sender)] += msg.value * stor6
        stor8[address(msg.sender)] += 1000 * msg.value
        emit Transfer((msg.value * stor6), 0, msg.sender);
        totalSupply += 14 * msg.value * stor6 / 100
        balanceOf[stor4] += 14 * msg.value * stor6 / 100
        emit Transfer((14 * msg.value * stor6 / 100), 0, migrationMasterAddress);
}



}
