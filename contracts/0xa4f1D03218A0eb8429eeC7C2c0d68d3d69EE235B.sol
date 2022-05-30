contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
array of uint256 stor2;
address stor3;
address stor4;

function _fallback() payable {
    stor4 = 0x554622209ee05e8871dbe1ac94d21d30b61013c2
    require not msg.value
    mem[96 len -2584] = code.data[3155 len -2584]
    mem[64] = -2488
    stor3 = msg.sender
    stor2[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor4 = mem[140 len 20]
    stor0 = mem[172 len 20]
    stor1 = mem[192]
    return code.data[571 len 2584]
}



// =====================  Runtime code  =====================


const currentTimestamp = block.timestamp


address beneficiaryAddress;
uint256 releaseTime;
array of uint256 name;
address owner;
address tokenAddress;

function name() {
    return name[0 len name.length]
}

function releaseTimestamp() {
    return releaseTime
}

function beneficiary() {
    return beneficiaryAddress
}

function owner() {
    return owner
}

function releaseTime() {
    return releaseTime
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setReleaseTime(uint256 arg1) {
    releaseTime = arg1
}

function secondsRemaining() {
    if block.timestamp >= releaseTime:
        return 0
    return (releaseTime - block.timestamp)
}

function tokenLocked() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function safeRelease() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] > 0:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args owner, ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
}

function release() {
    require block.timestamp >= releaseTime
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] > 0:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args beneficiaryAddress, ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
}



}
