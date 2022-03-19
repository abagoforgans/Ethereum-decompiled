contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1167]




// =====================  Runtime code  =====================


mapping of struct stor0;
array of uint256 myCommitmentCount;

function getMyCommitmentCount() payable {
    return myCommitmentCount[address(msg.sender)]
}

function getMyCommitmentHash(uint256 arg1) payable {
    require arg1 < myCommitmentCount[address(msg.sender)]
    return myCommitmentCount[address(msg.sender)][arg1]
}

function _fallback() payable {
  stop
}

function getCommitment(bytes32 arg1) payable {
    return stor0[arg1].field_256, 
           stor0[arg1].field_512,
           stor0[arg1].field_768,
           stor0[arg1].field_1024,
           stor0[arg1].field_1280,
           stor0[arg1].field_1536,
           0
}

function settle(bytes32 arg1, bytes32 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) payable {
    signer = erecover(sha3(stor0[arg1].field_512, arg2), arg3 << 248, arg4, arg5) 
    require erecover.result
    if stor0[arg1].field_0:
        return 0
    if address(signer) != stor0[arg1].field_1536:
        return 0
    stor0[arg1].field_0 = 1
    if arg2 <= 1:
        call stor0[arg1].field_1280 with:
           value stor0[arg1].field_768 wei
             gas 0 wei
        emit commitmentSettled(0, arg1);
        return 0
    call stor0[arg1].field_1024 with:
       value stor0[arg1].field_768 wei
         gas 0 wei
    emit commitmentSettled(1, arg1);
    return 1
}

function sub_9815eedc(?) payable {
    stor0[this.address][msg.sender][msg.value][call.data[0 len calldata.size]].field_0 = 0
    stor0[this.address][msg.sender][msg.value][call.data[0 len calldata.size]].field_256 = arg1
    stor0[this.address][msg.sender][msg.value][call.data[0 len calldata.size]].field_512 = arg2
    stor0[this.address][msg.sender][msg.value][call.data[0 len calldata.size]].field_768 = msg.value
    stor0[this.address][msg.sender][msg.value][call.data[0 len calldata.size]].field_1024 = msg.sender or Mask(96, 160, stor0[this.address][msg.sender][msg.value][call.data[0 len calldata.size]].field_1024)
    stor0[this.address][msg.sender][msg.value][call.data[0 len calldata.size]].field_1280 = arg3 or Mask(96, 160, stor0[this.address][msg.sender][msg.value][call.data[0 len calldata.size]].field_1280)
    stor0[this.address][msg.sender][msg.value][call.data[0 len calldata.size]].field_1536 = arg4 or Mask(96, 160, stor0[this.address][msg.sender][msg.value][call.data[0 len calldata.size]].field_1536)
    myCommitmentCount[address(msg.sender)]++
    if not myCommitmentCount[address(msg.sender)] <= myCommitmentCount[address(msg.sender)] + 1:
        idx = myCommitmentCount[address(msg.sender)] + 1
        while myCommitmentCount[address(msg.sender)] > idx:
            myCommitmentCount[address(msg.sender)][idx] = 0
            idx = idx + 1
            continue 
    myCommitmentCount[address(msg.sender)][myCommitmentCount[address(msg.sender)]] = sha3(this.address, msg.sender, msg.value, call.data[0 len calldata.size])
    return sha3(this.address, msg.sender, msg.value, call.data[0 len calldata.size])
}



}
