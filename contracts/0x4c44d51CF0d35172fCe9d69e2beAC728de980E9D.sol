contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
uint256 stor4;
uint256 stor5;
uint8 stor6;
uint256 stor7;

function _fallback() payable {
    stor0 = 0
    stor1 = 0
    stor2 = 0
    stor3 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    require not msg.value
    require code.data[12101 len 20]
    require code.data[12133 len 20]
    require code.data[12197 len 20]
    require code.data[12217 len 32] > 1
    require code.data[12249 len 32] > 0
    stor0 = code.data[12101 len 20]
    stor1 = code.data[12133 len 20]
    stor2 = code.data[12165 len 20]
    stor3 = code.data[12197 len 20]
    stor4 = code.data[12217 len 32]
    stor7 = code.data[12249 len 32]
    return code.data[337 len 11752]
}



// =====================  Runtime code  =====================


#
#  - submitRing(address[2][] arg1, uint256[7][] arg2, uint8[2][] arg3, bool[] arg4, uint8[] arg5, bytes32[] arg6, bytes32[] arg7, address arg8, address arg9, bool arg10)
#
const FEE_SELECT_MAX_VALUE = 1

const MARGIN_SPLIT_PERCENTAGE_BASE = 100

const RATE_RATIO_SCALE = 10000

const FEE_SELECT_LRC = 0

const FEE_SELECT_MARGIN_SPLIT = 1


address lrcTokenAddress;
address tokenRegistryAddress;
address ringhashRegistryAddress;
address delegateAddress;
uint256 maxRingSize;
uint256 ringIndex;
uint256 rateRatioCVSThreshold;
mapping of uint256 filled;
mapping of uint256 cancelled;
mapping of uint256 cutoffs;

function filled(bytes32 arg1) {
    return filled[arg1]
}

function cancelled(bytes32 arg1) {
    return cancelled[arg1]
}

function ringIndex() {
    return ringIndex
}

function lrcTokenAddress() {
    return lrcTokenAddress
}

function tokenRegistryAddress() {
    return tokenRegistryAddress
}

function delegateAddress() {
    return delegateAddress
}

function maxRingSize() {
    return maxRingSize
}

function ringhashRegistryAddress() {
    return ringhashRegistryAddress
}

function cutoffs(address arg1) {
    return cutoffs[arg1]
}

function rateRatioCVSThreshold() {
    return rateRatioCVSThreshold
}

function _fallback() payable {
    revert
}

function setCutoff(uint256 arg1) {
    if arg1:
        if cutoffs[address(msg.sender)] >= arg1:
            emit Error(Array(len=42, data='attempted to set cutoff to a sma', 'ller value', Mask(80, -256, 'attempted to set cutoff to a sma', 'ller value') << 256));
            revert
        cutoffs[address(msg.sender)] = arg1
        emit CutoffTimestampChanged(block.timestamp, block.number, arg1, msg.sender);
    else:
        if cutoffs[address(msg.sender)] >= block.timestamp:
            emit Error(Array(len=42, data='attempted to set cutoff to a sma', 'ller value', Mask(80, -256, 'attempted to set cutoff to a sma', 'ller value') << 256));
            revert
        cutoffs[address(msg.sender)] = block.timestamp
        emit CutoffTimestampChanged(block.timestamp, block.number, block.timestamp, msg.sender);
}

function cancelOrder(address[3] arg1, uint256[7] arg2, bool arg3, uint8 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) {
    if call.data[292] <= 0:
        emit Error('amount to cancel is zero');
        revert
    if address(call.data[4]) != msg.sender:
        emit Error(Array(len=40, data='cancelOrder not submitted by ord', 'er owner', Mask(64, -256, 'cancelOrder not submitted by ord', 'er owner') << 256));
        revert
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, address(call.data[4]), address(call.data[36]), address(call.data[68]), call.data[100], call.data[132], call.data[164], call.data[196], call.data[228], call.data[260], uint8(bool(cd[324])), uint8(cd[356]))), cd[388] << 248, cd[420], cd[452]) 
    require erecover.result
    if address(call.data[4]) != address(signer):
        emit Error('invalid signature');
        revert
    require call.data[292] + cancelled[this.address][address(call.data[4])][address(call.data[36])][address(call.data[68])][call.data[100]][call.data[132]][call.data[164]][call.data[196]][call.data[228]][call.data[260]][uint8(bool(cd[324]))][uint8(cd[356])] >= cancelled[this.address][address(call.data[4])][address(call.data[36])][address(call.data[68])][call.data[100]][call.data[132]][call.data[164]][call.data[196]][call.data[228]][call.data[260]][uint8(bool(cd[324]))][uint8(cd[356])]
    cancelled[this.address][address(call.data[4])][address(call.data[36])][address(call.data[68])][call.data[100]][call.data[132]][call.data[164]][call.data[196]][call.data[228]][call.data[260]][uint8(bool(cd[324]))][uint8(cd[356])] += call.data[292]
    emit OrderCancelled(block.timestamp, block.number, call.data[292], sha3(this.address, address(call.data[4]), address(call.data[36]), address(call.data[68]), call.data[100], call.data[132], call.data[164], call.data[196], call.data[228], call.data[260], uint8(bool(cd[324])), uint8(cd[356])));
}



}
