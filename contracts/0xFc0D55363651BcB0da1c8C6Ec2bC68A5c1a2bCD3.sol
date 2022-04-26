contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
uint256 stor1;
mapping of uint256 stor2;
uint256 stor5;

function _fallback() {
    address(stor0.field_0) = msg.sender
    stor1 = 10^11 * code.data[7348 len 32]
    stor2[address(this.address)] = 10^11 * code.data[7348 len 32]
    stor5 = code.data[7380 len 32]
    Mask(96, 0, stor0.field_160) = 1
    return code.data[254 len 7094]
}



// =====================  Runtime code  =====================


const name = Array(len=45, data='Bassdrops, a Currency of Omnitem', 'po Maximalism', Mask(104, -256, 'Bassdrops, a Currency of Omnitem', 'po Maximalism') << 256)

const decimals = 11

const symbol = 'BASS'

const CONTRACT_VERSION = 'A'

const CONTRACT_NAME = 'Bassdrops'

const QUOTE = Array(len=146, data=0x4974e28099732061207065726d616e656e742c20706572666563742053494d554c54414e454f555320646963686f746f6d79206f6620746f74616c20696e7369676e69666963616e636520616e6420746f74616c207369676e69666963616e6365206d6572676564206173206f6e6520696e746f2065766572792073696e676c6520666c617368696e67207365636f6e6400, mem[274 len 14] >> 768, Mask(144, -1024, mem[274 len 14]) << 1024)


uint8 stor0; offset 160
uint128 stor0; offset 160
address stor0;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor4;
uint256 tokensPerWei;

function totalSupply() {
    return totalSupply
}

function TokensPerWei() {
    return tokensPerWei
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function IsTradeable() {
    return bool(uint8(stor0.field_160))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function Terminate() {
    require msg.sender == address(stor0.field_0)
    selfdestruct(address(stor0.field_0))
}

function IsOwner(address arg1) {
    return (address(stor0.field_0) == arg1)
}

function _fallback() payable {
    emit RecievedEth(msg.value, block.timestamp, msg.sender);
}

function SetTokensPerWei(uint256 arg1) {
    require msg.sender == address(stor0.field_0)
    tokensPerWei = arg1
}

function LockAccount(address arg1) {
    require msg.sender == address(stor0.field_0)
    stor4[address(arg1)] = 1
}

function UnlockAccount(address arg1) {
    require msg.sender == address(stor0.field_0)
    stor4[address(arg1)] = 0
}

function TransferOwner(address arg1) {
    require msg.sender == address(stor0.field_0)
    address(stor0.field_0) = arg1
}

function SetTradeable(bool arg1) {
    require msg.sender == address(stor0.field_0)
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
}

function approve(address arg1, uint256 arg2) {
    emit Approval(arg2, msg.sender, arg1);
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor4[address(msg.sender)]
    require uint8(stor0.field_160)
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    emit Transfer(arg2, msg.sender, arg1);
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    return 1
}

function BuyToken(bytes32 arg1) payable {
    require msg.value > 0
    require balanceOf[address(this.address)] + (10^11 * tokensPerWei * msg.value / 10^18) > balanceOf[address(this.address)]
    emit SoldToken(10^11 * tokensPerWei * msg.value / 10^18, arg1, msg.sender);
    emit Transfer((10^11 * tokensPerWei * msg.value / 10^18), this.address, msg.sender);
    totalSupply += 10^11 * tokensPerWei * msg.value / 10^18
    balanceOf[address(msg.sender)] += 10^11 * tokensPerWei * msg.value / 10^18
}

function FoundationTransfer(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == address(stor0.field_0)
    require eth.balance(this.address) >= arg2
    require balanceOf[address(this.address)] >= arg3
    if arg2 > 0:
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit TransferedEth(arg2, arg1);
    if arg3 > 0:
        require balanceOf[address(arg1)] + arg3 > balanceOf[address(arg1)]
        balanceOf[address(this.address)] -= arg3
        balanceOf[address(arg1)] += arg3
        emit Transfer(arg3, this.address, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor4[address(msg.sender)]
    require not stor4[address(arg1)]
    require not stor4[address(arg2)]
    require uint8(stor0.field_160)
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    emit Transfer(arg3, arg1, arg2);
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    return 1
}



}
