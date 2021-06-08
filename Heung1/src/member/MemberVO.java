package member;

public class MemberVO {
	private String mId;
	private String mPwd;
	private String mName;
	private String mPost;
	private String mAddress;
	private int mPhone;
	private String mEmail;
	private int mGender;
	private int mRdate;
	private String mBirth;
	private int mLever;
	private int mBuy;
	private int mDrop;

	@Override
	public String toString() {
		return "MemberVO [mId=" + mId + ", mPwd=" + mPwd + ", mName=" + mName + ", mPost=" + mPost + ", mAddress="
				+ mAddress + ", mPhone=" + mPhone + ", mEmail=" + mEmail + ", mGender=" + mGender + ", mRdate=" + mRdate
				+ ", mBirth=" + mBirth + ", mLever=" + mLever + ", mBuy=" + mBuy + ", mDrop=" + mDrop + "]";
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public String getmPwd() {
		return mPwd;
	}

	public void setmPwd(String mPwd) {
		this.mPwd = mPwd;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public String getmPost() {
		return mPost;
	}

	public void setmPost(String mPost) {
		this.mPost = mPost;
	}

	public String getmAddress() {
		return mAddress;
	}

	public void setmAddress(String mAddress) {
		this.mAddress = mAddress;
	}

	public int getmPhone() {
		return mPhone;
	}

	public void setmPhone(int mPhone) {
		this.mPhone = mPhone;
	}

	public String getmEmail() {
		return mEmail;
	}

	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}

	public int getmGender() {
		return mGender;
	}

	public void setmGender(int mGender) {
		this.mGender = mGender;
	}

	public int getmRdate() {
		return mRdate;
	}

	public void setmRdate(int mRdate) {
		this.mRdate = mRdate;
	}

	public String getmBirth() {
		return mBirth;
	}

	public void setmBirth(String mBirth) {
		this.mBirth = mBirth;
	}

	public int getmLever() {
		return mLever;
	}

	public void setmLever(int mLever) {
		this.mLever = mLever;
	}

	public int getmBuy() {
		return mBuy;
	}

	public void setmBuy(int mBuy) {
		this.mBuy = mBuy;
	}

	public int getmDrop() {
		return mDrop;
	}

	public void setmDrop(int mDrop) {
		this.mDrop = mDrop;
	}

}
