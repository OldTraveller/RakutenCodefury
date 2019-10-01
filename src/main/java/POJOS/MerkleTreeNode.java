package POJOS;

import java.util.ArrayList;

/*
 * WORK UNDER PROGRESS ...
 */
public class MerkleTreeNode {
	/*
	 * EACH NODE MUST HAVE THE PLANTER SHA1 HASH !! 
	 * ALONG WITH THE LIST OF NODES WHO HE HAS INVOLVED IN THE PYRAMID SCHEME 
	 * ALONG WITH THE BALANCE IN EACH NODE ... THE TRANSACTION IF ANY !! 
	 * AND THE COPY OF THE LEDGER ... 
	 */
	private String shaHashCurrent;
	private ArrayList<MerkleTreeNode> nextNodes;
	private String associator;
	private double totalBalance;
	
	public String getShaHashCurrent() {
		return shaHashCurrent;
	}
	public void setShaHashCurrent(String shaHashCurrent) {
		this.shaHashCurrent = shaHashCurrent;
	}
	public ArrayList<MerkleTreeNode> getNextNodes() {
		return nextNodes;
	}
	public void setNextNodes(ArrayList<MerkleTreeNode> nextNodes) {
		this.nextNodes = nextNodes;
	}
	public String getAssociator() {
		return associator;
	}
	public void setAssociator(String associator) {
		this.associator = associator;
	}
	public double getTotalBalance() {
		return totalBalance;
	}
	public void setTotalBalance(double totalBalance) {
		this.totalBalance = totalBalance;
	}
}
