package mini_project_1;

import java.util.List;

//An interface that contains all crud operations to perform in both tables

public interface AdvertiseDAO {
	List<Advertise> fetch();
	int insert(Advertise ad);
	int update(Advertise ad);
	int delete(int id);
	Advertise search(int id);
	int update_user(User user);
	int insert_user(User user);
}
